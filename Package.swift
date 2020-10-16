// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "GoogleMaps",
    products: [
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
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.0.0/GoogleMaps.xcframework.zip",
            checksum: "bcb04ac4b0bffdf53247d1ca43f6ce9de8e5a6361c9507c3f6bb4e50d90adc86"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "7a59265a0691997fd10e55e24432efb156bf3c575e34859234ad211432dcf4b2"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "182f49e39c6500ba4209ffe5a6497bfbef47e5591f5bf5e424779081d8077dbf"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "b3c6a9a5b4ed33103f2c664c86c9bb674cf32263debe018cdc75aabd127aab0b"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.0.0/GooglePlaces.xcframework.zip",
            checksum: "eda53ce7b98f5a4a8258e1b1365c135b5e7b91d0f8a76589596d4c255f63c3f4"
        )
    ]
)
