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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.33.1-a.1/BitmovinPlayer.zip",
            checksum: "05d57f22b6dd0be7a4f3a1fe754b664a7b1dd283a8f18c174867d0ef6436564c"
        )
    ]
)
