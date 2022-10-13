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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.0.0/GoogleMaps.xcframework.zip",
            checksum: "7f652401059af8627c56f52c821efc2e0ff092d0c8d2c031a3f6050594491ab5"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "bfaa7d9b5bce933de1dcb9fdfaeae53b1aff31cefbba705a3e2be73e425d4e0d"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "d1eb6693d3287a6f0a610fd285c1f3edcb49c833ddfa19b999d9395f8def35ee"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "0978e7b92ba72be67117c3ef080773b6f019d72c98fc56cbb0573fb4456fc9e2"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.0.0/GooglePlaces.xcframework.zip",
            checksum: "dbc69187317c41196302a5d16aa73911e0e710ebcd27c8f5044a8d004df60350"
        )
    ]
)
