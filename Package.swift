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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.1/GoogleMaps.xcframework.zip",
            checksum: "f16b5f593cfe0972b750bd81876f7316844973530df78f3d643cbbe12476d2b9"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.1/GoogleMapsBase.xcframework.zip",
            checksum: "6f0c5316af66c3b07391e753732ee39a4fe019a7d62cb715587a14e36cb9e639"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.1/GoogleMapsCore.xcframework.zip",
            checksum: "f70858ab8efc5353113d0e5a941e4c7418e2b6bc7f242940437c9c22669059ec"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.1/GoogleMapsM4B.xcframework.zip",
            checksum: "0384cc5c11e5607267639730a06daed5ad57e8251820c096b4f3917890d91450"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.1/GooglePlaces.xcframework.zip",
            checksum: "4d4ad77145a39b18f31cc2a0c9569ad687de88738bde8edcc55cfb655e927cd3"
        )
    ]
)
