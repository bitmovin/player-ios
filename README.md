# BitmovinPlayer

- [Installation](#installation)
    - [CocoaPods](#cocoapods)
    - [Swift Package Manager](#swift-package-manager)
    - [Add the Player SDK to the Project directly](#add-the-player-sdk-to-the-project-directly)
- [Getting Started](#getting-started)
    - [Configure the license key](#configure-the-license-key)
- [Samples](#samples)
- [Documentation and Resources](#documentation-and-resources)

## Installation
To add the SDK as a dependency to your project, you have three options: Using Swift Package Manager, CocoaPods or adding the SDK bundle directly.

### CocoaPods
Add the following lines to the `Podfile` of your project while replacing `Version Number` with the desired version of the SDK. All available versions are listed in the [cocoapod repository](https://github.com/bitmovin/cocoapod-specs/tree/master/Specs/BitmovinPlayer).

Run `pod repo update` to add the newly added source and run `pod install` to install it.

```ruby
source 'https://github.com/bitmovin/cocoapod-specs.git'

pod 'BitmovinPlayer', 'Version Number'
```

### Swift Package Manager
The [Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

#### Using Xcode
To integrate using Xcode 13, open your Project file and specify it in `Project > Package Dependencies` using the following URL:

```
https://github.com/bitmovin/bitmovin-player-ios
```

#### Using `Package.swift`
To integrate using Apple's Swift Package Manager, add the following as a dependency to your `Package.swift` and replace `Version Number` with the desired version of the SDK.

```swift
.package(name: "BitmovinPlayer", url: "https://github.com/bitmovin/player-ios-tvos.git", .exact("Version Number"))
```

And then specify the `BitmovinPlayer` as a dependency of the desired Target. Here's an example of a `Package.swift` file:

```swift
// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(name: "BitmovinPlayer", url: "https://github.com/bitmovin/player-ios-tvos.git", .exact("Version Number"))
  ],
  targets: [
    .target(name: "MyPackage", dependencies: ["BitmovinPlayer"])
  ]
)
```

### Add the Player SDK to the Project directly
When using Xcode, go to the `General` page or your app target and add the SDK bundle (`BitmovinPlayer.xcframework`) under `Linked Frameworks and Libraries`. The latest SDK for iOS and tvOS can be downloaded [here](https://cdn.bitmovin.com/player/ios_tvos/3.0.0/BitmovinPlayer.zip).

## Getting Started
### Configure the license key

- Add your Bitmovin player license key to the `Info.plist` file as `BitmovinPlayerLicenseKey`. Alternatively, you can also set the license key via the `PlayerConfig.key` property when creating a `Player` instance.

    Your player license key can be found when logging in into [https://bitmovin.com/dashboard](https://bitmovin.com/dashboard) and navigating to `Player -> Licenses`.

- Add the Bundle identifier of the iOS application which is using the SDK as an allowed domain to the Bitmovin licensing backend. This can be also done under `Player -> Licenses` when logging in into [https://dashboard.bitmovin.com](https://dashboard.bitmovin.com) with your account.

## Samples

For samples using the Bitmovin Player iOS SDK see [here](https://github.com/bitmovin/bitmovin-player-ios-samples).
For a sample using SPM for integration, see sample named `BasicPlaybackSPM`.


## Documentation and Resources
-   You can find a full getting started guide including examples of how to set up a `Player` [here](https://bitmovin.com/docs/player/getting-started/ios).
-   You can find the latest API documentation [here](https://bitmovin.com/ios-sdk-documentation/).
-   The release notes can be found [here](https://bitmovin.com/release-notes-ios-sdk/).
