// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WotNotSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "WotNotSDK",
            targets: ["WotNotSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/socketio/socket.io-client-swift", from: "16.0.0"),
        .package(url: "https://github.com/daltoniam/Starscream", from: "4.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "WotNotSDK",
            url: "https://github.com/MahekkumarChaniyara/PrivateSpecs/releases/download/v1.0.6/WotNotSDK.xcframework.zip",
            checksum: "3fed12dfdb7062a3a7cf864a6d8636e80ce94a2e0007b9d3fa4ff0bda662b68b"
        ),
    ]
)
