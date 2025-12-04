// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BitmovinPlayer",
    platforms: [
        .iOS(.v14),
        .tvOS(.v14)
    ],
    products: [
        .library(
            name: "BitmovinPlayer",
            targets: ["BitmovinPlayerTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/bitmovin/player-ios-core.git", "3.103.0-a.2"..."3.103.0"),
        .package(url: "https://github.com/bitmovin/bitmovin-analytics-collector-ios.git", from: "3.8.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BitmovinPlayer",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.103.0-a.2/BitmovinPlayer.zip",
            checksum: "718b02c262812e551061606687af278d41bbb82d5deca9801edd851412df5bc1"
        ),
        .binaryTarget(
            name: "BitmovinPlayerAnalytics",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.103.0-a.2/BitmovinPlayerAnalytics.zip",
            checksum: "8b3dc74209e09064f3e91ec2cd0db4aa3cc9eed5185358768dacb1a1bbb2c288"
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
