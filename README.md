# BitmovinPlayer

- [Installation](#installation)
    - [CocoaPods](#using-cocoapods)
    - [Swift Package Manager](#using-swift-package-manager)
    - [Add the Player SDK to the Project directly](#add-the-player-sdk-to-the-project-directly)
- [Getting Started](#getting-started)
    - [Configure the license key](#configure-the-license-key)
- [Samples](#samples)
- [Documentation and Resources](#documentation-and-resources)

## Installation
To add the `BitmovinPlayer` SDK as a dependency to your project, you have three options: Using CocoaPods, Swift Package Manager or adding the SDK bundle directly.

### Using [CocoaPods](https://cocoapods.org/)
Add the following lines to the `Podfile` of your project and replace the `Version Number` with the desired version of the `BitmovinPlayer`. You can find all versions [here](https://github.com/bitmovin/cocoapod-specs/tree/master/Specs/BitmovinPlayer).

Execute `pod repo update` first to add the new source and execute `pod install` after to install the new `BitmovinPlayer` dependency.

```ruby
source 'https://github.com/bitmovin/cocoapod-specs.git'

pod 'BitmovinPlayer', '3.35.1-a.106'
```

### Using [Swift Package Manager](https://swift.org/package-manager/)
[Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift frameworks. It integrates with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

#### Using Xcode
To integrate using Xcode 13, open your Project file and specify it in `Project > Package Dependencies` using the following URL:

```
https://github.com/bitmovin/player-ios.git
```

#### Using `Package.swift`
To integrate using Apple's Swift Package Manager, add the following as a dependency to your `Package.swift` and replace `Version Number` with the desired version of the SDK.

```swift
.package(name: "BitmovinPlayer", url: "https://github.com/bitmovin/player-ios.git", .exact("Version Number"))
```

And then specify the `BitmovinPlayer` as a dependency of the desired target. Here is an example of a `Package.swift` file:

```swift
let package = Package(
  ...
  dependencies: [
    ...
    .package(name: "BitmovinPlayer", url: "https://github.com/bitmovin/player-ios.git", .exact("Version Number"))
  ],
  targets: [
    .target(name: "<NAME_OF_YOUR_PACKAGE>", dependencies: ["BitmovinPlayer"])
  ]
  ...
)
```

##### Limitation
Executing `swift build` from the command line is currently not supported. Open the Package in Xcode if you are developing another Package depending on `BitmovinPlayer`.

### Add the Player SDK to the Project directly
When using Xcode, go to the `General` page or your app target and add the SDK bundle (`BitmovinPlayer.xcframework`) under `Linked Frameworks and Libraries`. The latest SDK for iOS and tvOS can be downloaded [here](https://cdn.bitmovin.com/player/ios_tvos/3.35.1-a.106/BitmovinPlayer.zip).

## Getting Started
### Configure the license key

- Add your Bitmovin Player license key to the `Info.plist` file as `BitmovinPlayerLicenseKey`. Alternatively, you can also set the license key via the `PlayerConfig.key` property when creating a `Player` instance.

    Your Bitmovin Player license key can be found under `Player -> Licenses` in the [Bitmovin Dashboard](https://bitmovin.com/dashboard).

- Add the Bundle Identifier of the iOS application which is using the SDK as an allowed domain to the Bitmovin licensing backend. This can be also done under `Player -> Licenses` via the [Bitmovin Dashboard](https://dashboard.bitmovin.com).

## Samples

For samples using the Bitmovin Player iOS SDK see [here](https://github.com/bitmovin/bitmovin-player-ios-samples).
For a sample using the Swift Package Manager for integration, see sample named `BasicPlaybackSPM`.


## Documentation and Resources
-   You can find a full getting started guide including examples [here](https://bitmovin.com/docs/player/getting-started/ios).
-   You can find the latest API documentation [here](https://bitmovin.com/docs/player/api-reference/ios/ios-sdk-api-reference-v3#/player/ios/3/docs/index.html).
-   The release notes can be found [here](https://bitmovin.com/docs/player/releases/ios).
