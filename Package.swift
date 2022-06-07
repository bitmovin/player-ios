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
            url: "https://cdn.bitmovin.com/player/ios_tvos/3.21.0-rc.2/BitmovinPlayer.zip",
            checksum: "c55b02dc5f361efc1f091e9cda3d36d9b7c7f9ba82e2cac378c6d820666135d1"
        )
    ]
)
