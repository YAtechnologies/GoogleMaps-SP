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
            checksum: "7e6137623e8d72c57a3a80e7dbbe1aefa3ff5b6a4c33e413063bafd60809ba2d"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "ebf18c6f6f458c70fda85c40279b181a60fb9d865bbd190ee55ab23492f71d5e"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "e2692ba367da98cc4cf95469112dd3fa1f835e4913e48e0facc5cfb8127ce427"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GooglePlaces.xcframework.zip",
            checksum: "aa119396a2df56f77eb25866fdbb625fd1f347b7eacd0ed9810164eb79b0a82d"
        )
    ]
)
