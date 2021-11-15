// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GENotification",
    platforms: [
        .macOS(.v10_15), .iOS(.v10)
    ],
    products: [
        .library(
            name: "GENotification",
            targets: ["GENotification"]),
    ],
    targets: [
        .target(
            name: "GENotification",
            dependencies: []),
        .testTarget(
            name: "GENotificationTests",
            dependencies: ["GENotification"]),
    ]
)
