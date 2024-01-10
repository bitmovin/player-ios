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
        .package(url: "https://github.com/bitmovin/player-ios-core.git", "3.53.0-rc.3"..."3.53.0"),
        .package(url: "https://github.com/bitmovin/bitmovin-analytics-collector-ios.git", from: "3.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "BitmovinPlayer",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.53.0-rc.3/BitmovinPlayer.zip",
            checksum: "c237ee54ddd504c83a3cb16a01dd6a3894e6751039a1ab5f1a0812a5f978a299"
        ),
        .binaryTarget(
            name: "BitmovinPlayerAnalytics",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.53.0-rc.3/BitmovinPlayerAnalytics.zip",
            checksum: "51327ead3f14a737282f5664e53a66a99e42d870606f4f7e735fb93285dbc1b6"
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
