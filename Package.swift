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
            checksum: "9b192bd50705bd732d0f75db9b8d16361bf5f8e2bd7df6c16ecced6175e2342e"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "ff206e5ba5dae860baa72f25294dd8140cb8427df1c0fbe3205417fabd3a61ba"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "dbc48766f1c3d3098d450b87a36411bbf72944d17313687549a3781ba3401a3d"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "b9b5dac29474ad33d0d38e767a4fe4eb7583d02aeca626bb7ef04baa7cbefe79"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/8.0.0/GooglePlaces.xcframework.zip",
            checksum: "71ff9989e5d756f0e83767bf9583cc1e51e76b8c899cace72f87cc9d4b5140e5"
        )
    ]
)
