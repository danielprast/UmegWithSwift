// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UmegWithSwift",
  platforms: [
    .macOS(.v10_10),
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "UmegWithSwift",
      targets: ["UmegWithSwift"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "UmegWithSwift",
      dependencies: []),
    .testTarget(
      name: "UmegWithSwiftTests",
      dependencies: ["UmegWithSwift"]
    ),
  ]
)
