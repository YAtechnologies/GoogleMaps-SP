#!/bin/bash

BUILD_DIRECTORY="Build"
CARTHAGE_XCFRAMEWORK_DIRECTORY="Carthage/Build/"

function archive_project() {
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

  # Archive Xcode project.
  archive_project $project_name $framework_name

  # Create XCFramework from the archived project.
  xcodebuild -create-xcframework\
    -framework "$framework_name.framework-iphoneos.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -framework "$framework_name.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/$framework_name.framework"\
    -output "$framework_name.xcframework"

  # Compress the XCFramework.
  zip -r -X "$framework_name.xcframework.zip" "$framework_name.xcframework/"

  # Save the SHA-256 checksum.
  shasum -a 256 "$framework_name.xcframework.zip" >> checksum
}

function prepare() {
  # Install Google Maps SDK for iOS.
  carthage update

  # Create Build directory if not existing.
  if [ ! -d "$BUILD_DIRECTORY" ]; then
    mkdir $BUILD_DIRECTORY
  fi
}

function cleanup() {
  rm -r *.xcframework
  rm -r *.xcarchive
}

function print_completion_message() {
  echo $'\n** XCFRAMEWORK CREATION FINISHED **\n'
}

function build_xcproject_project() {
  prepare

  cd $BUILD_DIRECTORY

  create_xcframework "GoogleMaps" "GoogleMaps"
  create_xcframework "GoogleMaps" "GoogleMapsBase"
  create_xcframework "GoogleMaps" "GoogleMapsCore"
  create_xcframework "GoogleMaps" "GoogleMapsM4B"
  create_xcframework "GoogleMaps" "GooglePlaces"

  cleanup
}

function create_google_xcframework() {
  framework_name=$1

  # Compress the XCFramework.
  zip -r -X "$framework_name.xcframework.zip" "$framework_name.xcframework/"

  # Save the SHA-256 checksum.
  shasum -a 256 "$framework_name.xcframework.zip" >> checksum

  # Move the XCFramework to build directory.
  mv "$framework_name.xcframework.zip" "../../Build"
}

function package_google_xcframework() {
  prepare

  cd $CARTHAGE_XCFRAMEWORK_DIRECTORY

  create_google_xcframework "GoogleMaps"
  create_google_xcframework "GoogleMapsBase"
  create_google_xcframework "GoogleMapsCore"
  create_google_xcframework "GoogleMapsM4B"
  create_google_xcframework "GooglePlaces"

  mv "checksum" "../../Build"
}

function help() {
  # Display help.
  echo "Syntax: make_scframework [-x|b|h]"
  echo "options:"
  echo "x     Create an XCFramework by building the Xcode project."
  echo "g     Create an XCFramework by zipping Google's prebuilt XCFramework."
  echo "h     Print this Help."
  echo
}

while getopts ":hxg" flag; do
   case "${flag}" in
      h) # display Help
        help
        exit;;
      x) # Build Xcode project
        build_xcproject_project
        print_completion_message
        exit;;
      g) # Package Google's beta Carthage XCFramework
        package_google_xcframework
        print_completion_message
        exit;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done
