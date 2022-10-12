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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.0/GoogleMaps.xcframework.zip",
            checksum: "164da875fb071f19bd929b5193144d2d4d7afea49b1bd15f42e7599d9dbe24df"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.0/GoogleMapsBase.xcframework.zip",
            checksum: "fa5d7717a039a789494072642a2d4638ee2bdb0fad312048d6863a7fddc84be1"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.0/GoogleMapsCore.xcframework.zip",
            checksum: "daa7028c439c409377064a3ea3a202a84eee195f56794769729cddfa4605eab5"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.0/GoogleMapsM4B.xcframework.zip",
            checksum: "1037a06b15ea2327f44dd551268b8397802e7c3b8fda7481f92482f6e69bfb9a"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.1.0/GooglePlaces.xcframework.zip",
            checksum: "d35b14665341ce9c44d4096836fc1a623198c65b8a205a7d41c348e1218e0a1a"
        )
    ]
)
