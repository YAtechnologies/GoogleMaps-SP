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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.1.0/GoogleMaps.xcframework.zip",
            checksum: "4c3cd74860f036211e5648fbebff8e278abe2dbab033e8be527f30100187e5fe"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.1.0/GoogleMapsBase.xcframework.zip",
            checksum: "c28b1fff1b9b6e44b06f116e67b924fba529305111ae964bdead01475a668c66"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.1.0/GoogleMapsCore.xcframework.zip",
            checksum: "e1388910af2d3897d027da02a4f6d1ad26cac3b68e275ef39e94460f5c016c13"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.1.0/GoogleMapsM4B.xcframework.zip",
            checksum: "83c2402ae8a78eb412d934cd0f4906e567291f4727c4ad4ec2a730db0d04d8f2"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/5.1.0/GooglePlaces.xcframework.zip",
            checksum: "28319e68972c7a1910f95663b62562560d45371dd86304f675f283bb21fc7f45"
        )
    ]
)
