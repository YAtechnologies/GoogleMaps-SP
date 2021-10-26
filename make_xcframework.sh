#!/bin/bash

BUILD_DIRECTORY="Build"

function convert_frameworks_arm64_to_iphonesimulator() {
  project_name=$1
  framework_name=$2

  xcrun vtool -arch arm64 \
    -set-build-version 7 11.0 13.7 \
    -replace \
    -output "../Carthage/Build/iOS/$framework_name.framework/$framework_name" \
    "../Carthage/Build/iOS/$framework_name.framework/$framework_name"
}

function archive_project_iphoneos() {
  project_name=$1
  framework_name=$2

  # Archive iOS project.
  xcodebuild archive\
   -project "../$project_name.xcodeproj"\
   -scheme "$framework_name"\
   -configuration "Release"\
   -destination "generic/platform=iOS"\
   -archivePath "$framework_name.framework-iphoneos.xcarchive"\
   SKIP_INSTALL=NO\
   BUILD_LIBRARY_FOR_DISTRIBUTION=YES
}

function archive_project_iphonesimulator() {
  project_name=$1
  framework_name=$2

  # Archive iOS Simulator project.
  xcodebuild archive\
     -project "../$project_name.xcodeproj"\
     -scheme "$framework_name"\
     -configuration "Simulator Release"\
     -destination "generic/platform=iOS Simulator"\
     -archivePath "$framework_name.framework-iphonesimulator.xcarchive"\
     SKIP_INSTALL=NO\
     BUILD_LIBRARY_FOR_DISTRIBUTION=YES
}

function create_xcframework() {
  project_name=$1
  framework_name=$2

  # Create XCFramework from the archived project.
  xcodebuild -create-xcframework\
    -framework "$framework_name.framework-iphoneos.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -framework "$framework_name.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -output "$framework_name.xcframework"

    # Compress the XCFramework.
    zip -r -X "$framework_name.xcframework.zip" "$framework_name.xcframework/"

    # Save the SHA-256 checksum
    shasum -a 256 "$framework_name.xcframework.zip" >> checksum
}

function cleanup() {
  # rm -r *.xcframework
  rm -r *.xcarchive
}

# Install Google Maps SDK for iOS.
carthage update

rm -rf $BUILD_DIRECTORY
mkdir $BUILD_DIRECTORY
cd $BUILD_DIRECTORY

frameworks=("GoogleMaps" "GoogleMapsBase" "GoogleMapsCore" "GoogleMapsM4B" "GooglePlaces")
for framework in "${frameworks[@]}"; do
  archive_project_iphoneos "GoogleMaps" "$framework"
done
for framework in "${frameworks[@]}"; do
  convert_frameworks_arm64_to_iphonesimulator "GoogleMaps" "$framework"
done
for framework in "${frameworks[@]}"; do
  archive_project_iphonesimulator "GoogleMaps" "$framework"
done
for framework in "${frameworks[@]}"; do
  create_xcframework "GoogleMaps" "$framework"
done

cleanup

echo $'\n** XCFRAMEWORK CREATION FINISHED **\n'