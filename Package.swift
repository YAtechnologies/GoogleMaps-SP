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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMaps.xcframework.zip",
            checksum: "ea01beaa0ba0053a4a1d188c5264e3363926201e66d72c7074a57961f5534714"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsBase.xcframework.zip",
            checksum: "7112fbbbfef4ad2de0bf3f1b2014adff5e97fcc10a5b8e06ec7360b1583805cf"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsCore.xcframework.zip",
            checksum: "bfa0aa03b51443a718cdddba853e4e24493d4238f6d67241738e412e4209b529"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsM4B.xcframework.zip",
            checksum: "49396a3c78d18cbf2aff5e4c15d40b4a7ed20f6e4da62832c0bb86f92eb792cb"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GooglePlaces.xcframework.zip",
            checksum: "aa8cce479f35438b6e13f4369e1be402341342fd4b19311969ab99ea76b79d42"
        )
    ]
)
