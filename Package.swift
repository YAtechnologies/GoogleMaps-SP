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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/3.10.0/GoogleMaps.xcframework.zip",
            checksum: "d22740e1a22c7d48ce9e660a3a4c4773aef121e066354784f9c7aec7a91ce146"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/3.10.0/GoogleMapsBase.xcframework.zip",
            checksum: "5523b376dc9e6e39e49a93ed6fedbf1f03330e762ab670aa8d4f0e5fe838a9bc"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/3.10.0/GoogleMapsCore.xcframework.zip",
            checksum: "97c0d40c93444c78f4c6a6979bfbb5ac1f762918bdfe9d1c173aacf48d4adba3"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/3.10.0/GoogleMapsM4B.xcframework.zip",
            checksum: "59c42657276f60511417e575b85bb94691843be95b0bb538f08294f644018fab"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/3.10.0/GooglePlaces.xcframework.zip",
            checksum: "00695c6782c2d25f8fa39ae09fdc8f854c4c02d40b3a4cd97fa69d155fac9f3f"
        )
    ]
)
