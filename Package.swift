// swift-tools-version:5.3
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
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BitmovinPlayer",
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.40.0-a.3/BitmovinPlayer.zip",
            checksum: "aa9534c3b25ed1632dbc88cbc08fcfe1b36379e1ebc72edf3b83bdf370e89130"
        )
    ]
)
