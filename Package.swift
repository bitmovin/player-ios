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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.36.1-a.3/BitmovinPlayer.zip",
            checksum: "4fd490d5d2f51c3741126da3ea52777d740e46a37949722fadbdd85c8bb05bda"
        )
    ]
)
