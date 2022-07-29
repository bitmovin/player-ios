// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BitmovinPlayer",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12)
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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.24.0-rc.1/BitmovinPlayer.zip",
            checksum: "ddb4d7ef9d544204b10f14bdeff5673893e7ac8529f42fb7c3b12637ad9cec98"
        )
    ]
)
