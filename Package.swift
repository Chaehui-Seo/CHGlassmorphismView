// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CHGlassmorphismView",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "CHGlassmorphismView",
            targets: ["CHGlassmorphismView"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CHGlassmorphismView",
            dependencies: []),
        .testTarget(
            name: "CHGlassmorphismViewTests",
            dependencies: ["CHGlassmorphismView"]),
    ]
)
