// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let common = Target.Dependency.product(
  name: "Common",
  package: "Common")

let package = Package(
    name: "ZombieKit",
    platforms: [
      .iOS(.v17),
      .tvOS(.v17),
      .macOS(.v14),
      .visionOS(.v1),
      .watchOS(.v10)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZombieKit",
            targets: ["ZombieKit"]),
    ],
    dependencies: [
      .package(path: "Common")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZombieKit",
            dependencies: [
              common
            ]),
        .testTarget(
            name: "ZombieKitTests",
            dependencies: ["ZombieKit"]
        ),
    ]
)
