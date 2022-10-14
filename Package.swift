// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
        .library(
            name: "GoogleMapsBase",
            targets: [
                "GoogleMapsBase"
            ]
        ),
        .library(
            name: "GoogleMapsCore",
            targets: [
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMaps",
            targets: [
                "GoogleMaps",
                "GoogleMapsBase",
                "GoogleMapsCore"
            ]
        ),
        .library(
            name: "GoogleMapsM4B",
            targets: [
                "GoogleMapsM4B"
            ]
        ),
        .library(
            name: "GooglePlaces",
            targets: [
                "GooglePlaces",
                "GoogleMapsBase"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.1.0/GoogleMaps.xcframework.zip",
            checksum: "dd364f9a74cdc76544bee4e446b4d3a64b9c61f78f18c84a61a80942f0e35f21"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.1.0/GoogleMapsBase.xcframework.zip",
            checksum: "d068afb56122a25703a6944d428902b1c25b43a291b0e397e45f0b63c03f59b1"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.1.0/GoogleMapsCore.xcframework.zip",
            checksum: "6df4cb38aa72810b9153b68a95aaa902a700e5badaa5313a41189081ae9be3f7"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.1.0/GoogleMapsM4B.xcframework.zip",
            checksum: "5ee1d910ec8732afc63969f2d6fe6868af8a5303b03019420b3203ed8bf5d4ac"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.1.0/GooglePlaces.xcframework.zip",
            checksum: "f00f9f2e948dfa0040689f5abbb5d5e873bcc309d8daa0ce6e7360494acc22ed"
        )
    ]
)
