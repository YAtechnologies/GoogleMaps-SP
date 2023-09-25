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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMaps.xcframework.zip",
            checksum: "d88dd3567378f8397afced3dea7815bff53b6c2712614712e1f29987a03ca284"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "9a60b252d7c7be3cb433496dd2a859c6d5580278fd441c9a49cec70da93dd9c5"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "10c868f097e842e947c26aa0c7ba4b8c85d570bd285a66209a07035ee703790e"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "65031bea560ed201c3da92ec97695ce1138eff0eca1596fca809af258cb6ce5c"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GooglePlaces.xcframework.zip",
            checksum: "aa119396a2df56f77eb25866fdbb625fd1f347b7eacd0ed9810164eb79b0a82d"
        )
    ]
)
