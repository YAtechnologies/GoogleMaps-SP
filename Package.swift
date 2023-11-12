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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMaps.xcframework.zip",
            checksum: "63b8e1744205a7d4ed04f9297ac7ae138d6fa7a7dc547f86daf887b67472deeb"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsBase.xcframework.zip",
            checksum: "24bd9709604e0bf62d2dee93aa4e5f80ca6f66b57eb20bd695895dcdc5b7583c"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsCore.xcframework.zip",
            checksum: "f2c0949a3db9535a7d1d6c659b237f813529b2c59ff9e3fd368203216b33e99e"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GoogleMapsM4B.xcframework.zip",
            checksum: "ef8f7cf0ec13558570559c367554e90286821c4a4577eff2e3f834104c5b5e31"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/7.3.0/GooglePlaces.xcframework.zip",
            checksum: "7acf74365eb97bdeda7b76f82ea7362c63361194e82759588b0d071b93422244"
        )
    ]
)
