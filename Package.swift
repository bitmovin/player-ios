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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.36.1-a.4/BitmovinPlayer.zip",
            checksum: "648e5351284997f8613413ba0e1356ca48f2996820bb36eaa2bb66367ede4595"
        )
    ]
)
