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
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.0/GoogleMaps.xcframework.zip",
            checksum: "cd775df376017bf507d3f0bdfc29a60ebbe35f58a44333a54a7786c07c546036"
        ),
        .binaryTarget(
            name: "GoogleMapsBase",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.0/GoogleMapsBase.xcframework.zip",
            checksum: "37bbaf7a16c9495a791166f2ea64835bd8506034deb2f0970ec2c70b98cb310f"
        ),
        .binaryTarget(
            name: "GoogleMapsCore",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.0/GoogleMapsCore.xcframework.zip",
            checksum: "3c628402426869708f2b160e51526b5088e8d7a398b454ec7cba2ba11729cdb2"
        ),
        .binaryTarget(
            name: "GoogleMapsM4B",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.0/GoogleMapsM4B.xcframework.zip",
            checksum: "3d7a6832b9f9a47b4ea2c82a982e5084411d8b1bf6371855edc1f434ddbe96c0"
        ),
        .binaryTarget(
            name: "GooglePlaces",
            url: "https://github.com/YAtechnologies/GoogleMaps-SP/releases/download/6.0.0/GooglePlaces.xcframework.zip",
            checksum: "50ebe575f4612e0c52ad2d388dbe25c943b88c0bf9a9a016b340dcca711e6bc6"
        )
    ]
)