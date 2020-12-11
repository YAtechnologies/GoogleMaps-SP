# Google Maps Swift Package

## Requirements
* [iOS 10.0](https://wikipedia.org/wiki/IOS_10) or later.
* [Xcode 12.0](https://developer.apple.com/xcode) or later.

## Build Requirements
* [Carthage 0.36.0](https://github.com/Carthage/Carthage) or later.

## Installation
- Add the following dependency to your project's `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/YAtechnologies/GoogleMaps-SP.git", .upToNextMinor(from: "4.1.0"))
]
```

## Building
On the project root directory run the following command:
```bash
make_xcframework.sh
```

This will create a directory named `Build` that contains zipped `XCFramework`s.

> The `checksum` file found inside the `Build` directory contains the SHA-256 checksum of the generated `XCFramework` zip files.

## License
The **Google Maps iOS SDK** and **Google Places iOS SDK** libraries are the property of Google and are subject to *Google's Terms of Service*. See [LICENSE.google](https://github.com/YAtechnologies/GoogleMaps-SP/blob/main/LICENSE.google) for details.
