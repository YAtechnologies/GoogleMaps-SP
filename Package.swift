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
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleMaps",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.2.0/GoogleMaps.xcframework.zip",
            checksum: "e422a4056ff7093fdeb1fe9cfac3dbd9a757309c7b483b78277582e43fe231c5"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.2.0/GoogleMapsBase.xcframework.zip",
            checksum: "b941bb683c777528bb171225f7adf9715bdef2c28d6b7c47e5164e9e23316699"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.2.0/GoogleMapsCore.xcframework.zip",
            checksum: "386e68a88629f7977f8a11b731d92e627349cabf46391d1bd333216a6adaedb5"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.2.0/GoogleMapsM4B.xcframework.zip",
            checksum: "df025349f08b06cc14f61d0bf7a19939958483020d3708e5f7e89bac9239b10a"
        )
    ]
)
