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
            targets: ["BitmovinPlayer"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/bitmovin/player-ios-core", exact: "3.38.1-a.1"),
        .package(url: "https://github.com/bitmovin/bitmovin-analytics-collector-ios", branch: "feature/change-dependency-to-player-core")
    ],
    targets: [
        .target(
            name: "BitmovinPlayer",
            dependencies: [
                "AnalyticsModule"
            ]
        ),
        .target(
            name: "AnalyticsModule",
            dependencies: [
                .product(name: "BitmovinPlayerCore", package: "player-ios-core"),
                .product(name: "BitmovinPlayerCollector", package: "bitmovin-analytics-collector-ios")
            ]
        )
    ]
)
