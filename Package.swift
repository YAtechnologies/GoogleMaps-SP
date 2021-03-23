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
            checksum: "9ee4a94befb57bbdd2d8c5306d2990b93228305b761f983a7fd35906738d08d3"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsBase.xcframework.zip",
            checksum: "d1dd20b5a524ff552b1cfc56f72666e5d93f86c36e3869ed3d7cb37a6e02a1e8"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsCore.xcframework.zip",
            checksum: "e63f08b4542c0d010a60f603a49a800c8036ebe48ed0f8242e6840f5852c0a5b"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsM4B.xcframework.zip",
            checksum: "e69567b8aadaf028a627a1b110634d2ac7a96087acc2460fabe2debb84b558b4"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GooglePlaces.xcframework.zip",
            checksum: "3bf89a29b9080bdf25951e9b28572acd84d9dde7c540aac845ae8537f22dc34c"
        )
    ]
)
