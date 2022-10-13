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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.1/GoogleMaps.xcframework.zip",
            checksum: "0f921b71a5c49c8e97ffa0499f7b9883f99939055a5cefb4e3be92d84e4e1bac"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.1/GoogleMapsBase.xcframework.zip",
            checksum: "61dc24adff5c4ed14b16eb0f577ea194235030a980f34db909c76f50df011354"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.1/GoogleMapsCore.xcframework.zip",
            checksum: "4d0f3afc90c998efabf9a24b9a6ac7c468b746b8aa277faf4a05f4f7044ee3cc"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.1/GoogleMapsM4B.xcframework.zip",
            checksum: "4fcc78f9da25c83026a10bce74a4a8336341901221716d87fce1371f5f3e51df"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.1/GooglePlaces.xcframework.zip",
            checksum: "7cf6fef9a1d998aab3e1dce4fbed753d829b7f7e96b4cf3ac7a2ae476401b18f"
        )
    ]
)
