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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.1.0/GoogleMaps.xcframework.zip",
            checksum: "3da02417880444f0f65c5ff475d4b3f399ce3a6790cdfd6c20428ccadcbf7290"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.1.0/GoogleMapsBase.xcframework.zip",
            checksum: "e4952a44e430414085d56962fcd1ae6d88b8503fa8ef233899207894c8c71d94"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.1.0/GoogleMapsCore.xcframework.zip",
            checksum: "c255fb0e17a677e1d70df11dc08d40617c2835ac8ab347f92ce194d7c4611e77"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.1.0/GoogleMapsM4B.xcframework.zip",
            checksum: "c5da70959af76a4333864981976ce6b2280628d3b9e3d89028e88293bcfa0e4a"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/4.1.0/GooglePlaces.xcframework.zip",
            checksum: "ee539dae928ec590bc3721105be68248099b2d9ee4397d91bc2528d728f55705"
        )
    ]
)
