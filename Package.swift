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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.0/GoogleMaps.xcframework.zip",
            checksum: "9f1ae13bc89658f4b4c0e9495ade216fe44b700048c92ba69ee652c2aa414929"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.0/GoogleMapsBase.xcframework.zip",
            checksum: "965c8145bfb12fcab9f023c263e1bd39224419a35f42d919ccf5bc7ee157d752"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.0/GoogleMapsCore.xcframework.zip",
            checksum: "6fc9a72e80a02f19977417d2750bc6bff7930edd040a566bf762de62a454c9ea"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.0/GoogleMapsM4B.xcframework.zip",
            checksum: "3a0e00533c3cb799552a0056e407c4f8a406f9aa9b8dee284a00fe96d2d4dc9a"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.2.0/GooglePlaces.xcframework.zip",
            checksum: "01250cb04cffe727b9a48236ac6e3cca3a0a5c08d781cf851bfa74a2a396da28"
        )
    ]
)
