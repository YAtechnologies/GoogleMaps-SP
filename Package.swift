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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.1/GoogleMaps.xcframework.zip",
            checksum: "a06af42c1ed6fcb6f3b2c9901844bcca9055d38e46a595480a269ce3aa462f90"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.1/GoogleMapsBase.xcframework.zip",
            checksum: "d0095fd59055d1205f5fa4b362004c733a73e0bc28175bb8ddfe30a1dade8466"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.1/GoogleMapsCore.xcframework.zip",
            checksum: "5796675aa945fbb03ee7d6a3b0ff8b46d3b42329cb4100c0c94fade66cfd527d"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.1/GoogleMapsM4B.xcframework.zip",
            checksum: "ec1094ff361d4c4235479b3967ec0b5649c1ec66f1671e594847e7a2e0d59ef1"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.1/GooglePlaces.xcframework.zip",
            checksum: "ed38b30e0a742eb3570f04f20f50bd3c1bb1e67e01da25de2a45f25b4ca3e75a"
        )
    ]
)
