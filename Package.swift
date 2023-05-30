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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.39.0-rc.2/BitmovinPlayer.zip",
            checksum: "fbfbe463f4b48c6a09eaedd0af2487d4e902e6e2b37f6b155d8e30c79cb91ee2"
        )
    ]
)
