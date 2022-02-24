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
            url: "https://github.com/dplisek/GoogleMaps-SP/releases/download/6.0.0-universal/GoogleMaps.xcframework.zip",
            checksum: "6a1d802448bbd7b6fd42bf6cacbee2c11c6638c73a3adf6cc0bab1bf60f40c56"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/dplisek/GoogleMaps-SP/releases/download/6.0.0-universal/GoogleMapsBase.xcframework.zip",
            checksum: "710806d11321359f5ad46345bee8a7ac2f12ed1ac4451a313ede4318cc08e273"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/dplisek/GoogleMaps-SP/releases/download/6.0.0-universal/GoogleMapsCore.xcframework.zip",
            checksum: "77a7fb139426041f6b93d6b09a376bf9b38c376682ba7d835aa194e47ebd92db"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/dplisek/GoogleMaps-SP/releases/download/6.0.0-universal/GoogleMapsM4B.xcframework.zip",
            checksum: "75b39725bb50391745ae6ed6a62a2433936e130ba8259ca0d4220fc5eef43bc8"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/dplisek/GoogleMaps-SP/releases/download/6.0.0-universal/GooglePlaces.xcframework.zip",
            checksum: "cc0be0211e030b9980cdfe3325a40a3bcfea32cce23c03de863e03bc9cfd9e76"
        )
    ]
)
