// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BitmovinPlayer",
    platforms: [
        .iOS("14.2"),
        .tvOS("14.2")
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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.37.0-b.1/BitmovinPlayer.zip",
            checksum: "c06230a2b1fc79c46d757385e493f2f8449e793ad5ea28716f200ab9c321a7b9"
        )
    ]
)
