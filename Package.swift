// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlertFactory",
    platforms:[
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "AlertFactory",
            targets: ["AlertFactory"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AlertFactory",
            dependencies: [])
    ]
)
