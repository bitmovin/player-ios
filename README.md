# BitmovinPlayer

## Samples

For samples using the Bitmovin Player iOS SDK see [here](https://github.com/bitmovin/bitmovin-player-ios-samples).
For a sample using SPM for integration, see sample named `BasicPlaybackSPM`.

## How to integrate the Bitmovin Player iOS SDK
When you want to develop an own iOS application using the Bitmovin Player iOS SDK read through the following steps.

### Adding the SDK To Your Project
To add the SDK as a dependency to your project, you have three options: Using Swift Package Manager, CocoaPods or adding the SDK bundle directly.

#### Using Swift Package Manager (SPM)

##### Using Xcode
Add your package by following the [official guide](https://developer.apple.com/documentation/swift_packages/adding_package_dependencies_to_your_app) from Apple.
Use URL of `https://github.com/bitmovin/bitmovin-player-ios` for the `Search or Enter Package URL` field

##### Adding to `Package.swift` directly
Create a `Package.swift` file.

```swift
// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "MyProject",
  dependencies: [
    .package(url: "https://github.com/bitmovin/bitmovin-player-ios.git", .exact("3.0.0"))
  ],
  targets: [
    .target(name: "MyProject", dependencies: ["BitmovinPlayer"])
  ]
)
```

#### Using CocoaPods
1. Add `source 'https://github.com/bitmovin/cocoapod-specs.git'` to your `Podfile`.
1. Run `pod repo update` to add the newly added source.
1. Add `pod 'BitmovinPlayer', '3.0.0'` to your `Podfile`.
1. Install the pod using `pod install`.

See the `Podfile` of this repository for a full example.

#### Adding the SDK Directly
When using Xcode, go to the `General` page or your app target and add the SDK bundle (`BitmovinPlayer.xcframework`) under `Linked Frameworks and Libraries`. The latest SDK for iOS and tvOS can be downloaded [here](https://cdn.bitmovin.com/player/ios_tvos/3.0.0/BitmovinPlayer.zip).

#### Prepare your Bitmovin Player license

+   Add your Bitmovin player license key to the `Info.plist` file as `BitmovinPlayerLicenseKey`. Alternatively you can also set the license key via the `PlayerConfig.key` property when creating a `Player` instance.

    Your player license key can be found when logging in into [https://bitmovin.com/dashboard](https://bitmovin.com/dashboard) and navigating to `Player -> Licenses`.

+   Add the Bundle identifier of the iOS application which is using the SDK as an allowed domain to the Bitmovin licensing backend. This can be also done under `Player -> Licenses` when logging in into [https://dashboard.bitmovin.com](https://dashboard.bitmovin.com) with your account.

    When you do not do this, you'll get a license error when starting the application which contains the player.


## Documentation And Release Notes
-   You can find the latest API documentation [here](https://bitmovin.com/ios-sdk-documentation/).
-   The release notes can be found [here](https://bitmovin.com/release-notes-ios-sdk/).
w
