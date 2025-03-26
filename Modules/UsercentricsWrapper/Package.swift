// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UsercentricsWrapper",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "UsercentricsWrapper",
            targets: ["UsercentricsWrapper"]),
    ],
    dependencies: [
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-sdk", exact: "2.15.0"),
        .package(url: "https://bitbucket.org/usercentricscode/usercentrics-spm-ui", exact: "2.15.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "UsercentricsWrapper",
            dependencies: [
                .product(name: "Usercentrics", package: "usercentrics-spm-sdk"),
                .product(name: "UsercentricsUI", package: "usercentrics-spm-ui")
            ]
        ),
        .testTarget(
            name: "UsercentricsWrapperTests",
            dependencies: ["UsercentricsWrapper"]
        ),
    ]
)
