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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.0.0/GoogleMaps.xcframework.zip",
            checksum: "a91877f99f5f588731c5b1662d3fff1471d5139e3c048763d901f4e2a4e84d5d"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "bfffbfc750caae8cff22ed489720eff9d1efa58ebe883c058f6a6ce52d970205"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "192894bdaf54965bad8541784d4fff261779d1ad268d9df6ad28c3ad06fe7047"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "d63ff2a74acbc71a37f7a615de11ab47b6fe9c462b2e68feff764a7153e1a99c"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.0.0/GooglePlaces.xcframework.zip",
            checksum: "703694603a35710277f98425d7f7b24ba409524dfd7275fcce442478980a8bee"
        )
    ]
)
