// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BitmovinPlayer",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "BitmovinPlayer",
            targets: ["BitmovinPlayerTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bitmovin/player-ios-core.git", "3.94.2-a.3"..."3.94.2"),
        .package(url: "https://github.com/bitmovin/bitmovin-analytics-collector-ios.git", from: "3.8.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BitmovinPlayer",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.94.2-a.3/BitmovinPlayer.zip",
            checksum: "de2b10f6d6a83cea132e8a8546a16bbc38f999084df1c621b68cbc36530aa2ca"
        ),
        .binaryTarget(
            name: "BitmovinPlayerAnalytics",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.94.2-a.3/BitmovinPlayerAnalytics.zip",
            checksum: "0b381cab70cea3f8d462bd7a78ce91e58d5f6c885b388dfa076d14091f8b586c"
        ),
        .target(
            name: "BitmovinPlayerTarget",
            dependencies: [
                "BitmovinPlayer",
                "BitmovinPlayerAnalytics",
                .product(name: "BitmovinCollector", package: "bitmovin-analytics-collector-ios"),
                .product(name: "BitmovinPlayerCore", package: "player-ios-core"),
            ]
        ),
    ]
)
