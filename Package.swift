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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMaps.xcframework.zip",
            checksum: "383e4a95b731d7462bf7e1fd183d1f65b7079a713f76d98df83b0f344f936f15"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsBase.xcframework.zip",
            checksum: "2e4cf729b797ec5d58005ec75c6e2bdeaf0511f8f85ce4d3cf0dc2b5c9cf3f44"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsCore.xcframework.zip",
            checksum: "736b11aa8cce7f57d2323c2cbba41a5e9611a63feb09b1583325c378b9fabd60"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsM4B.xcframework.zip",
            checksum: "34a1da7b9f7ede8c3fe30f4fdeb021f00d798221d836f0e46b8e26a59a79e0c0"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GooglePlaces.xcframework.zip",
            checksum: "7709bb15158a4118fa3bfb457c66fbae04d7bb47ba6ddfe8e02772d2c3320a40"
        )
    ]
)
