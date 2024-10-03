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
        .package(url: "https://github.com/bitmovin/player-ios-core.git", "3.74.0-rc.1"..."3.74.0"),
        .package(url: "https://github.com/bitmovin/bitmovin-analytics-collector-ios.git", from: "3.8.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BitmovinPlayer",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.74.0-rc.1/BitmovinPlayer.zip",
            checksum: "72590a16811cfa4fc5d2063062741303d64e07526be13619b9d988099fc28d8b"
        ),
        .binaryTarget(
            name: "BitmovinPlayerAnalytics",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.74.0-rc.1/BitmovinPlayerAnalytics.zip",
            checksum: "883625e1159e29a9596c2628d462ebd11acbdd5aa228cd72abb2ca582864d513"
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
