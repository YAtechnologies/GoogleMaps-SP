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
            checksum: "c4f491374c00e94d6d1b5798b8f190f7ebc279d21339f7acc621dcb83e7cdb15"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsBase.xcframework.zip",
            checksum: "54720e0d1de13cf2f7524c87639afeabcb5a757b25d9bdeb74300c66ae72f9f8"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsCore.xcframework.zip",
            checksum: "bb687edc2f11b58d90221b77f43d08fe7304fedb61677d50c39c55efedb7f85f"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GoogleMapsM4B.xcframework.zip",
            checksum: "1ad28a0b91cf29bcc5fc01bed2c373cb177cb80b9c2e77b4e0f07507af5f385e"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.2.0/GooglePlaces.xcframework.zip",
            checksum: "f258c28943f53bcb63b21a698720a3069edb29becf30f9617ffdd63ef9984aca"
        )
    ]
)
