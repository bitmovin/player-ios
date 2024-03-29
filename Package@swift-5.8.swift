// swift-tools-version:5.8
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
        .package(url: "https://github.com/bitmovin/player-ios-core.git", exact: "3.58.0"),
        .package(url: "https://github.com/bitmovin/bitmovin-analytics-collector-ios.git", from: "3.4.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BitmovinPlayer",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.58.0/BitmovinPlayer.zip",
            checksum: "e49ef692ee21829953f917afa75e7f7fa7063571e5c6c41654011549c6da758e"
        ),
        .binaryTarget(
            name: "BitmovinPlayerAnalytics",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.58.0/BitmovinPlayerAnalytics.zip",
            checksum: "ec0626897ea939cfdb5bb6bd42be9dfba1bc76fc3239fb8170590f684f98c67b"
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
