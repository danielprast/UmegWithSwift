// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UmegWithSwift",
  platforms: [
    .macOS(.v11)
  ],
  products: [
    .executable(
      name: "AppSwift",
      targets: ["AppSwift"]
    ),
    .library(
      name: "SwiftDataStructure",
      targets: ["SwiftDataStructure"]
    ),
    .library(
      name: "SwiftAlgorithm",
      targets: ["SwiftAlgorithm"]
    ),
    .library(
      name: "SwiftUmegChallenge",
      targets: ["SwiftUmegChallenge"]
    ),
    .library(
      name: "SwiftUmegHelper",
      targets: ["SwiftUmegHelper"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-package-manager.git", exact: "0.6.0")
  ],
  targets: [
    .executableTarget(
      name: "AppSwift",
      dependencies: [
        "SwiftAlgorithm",
        "SwiftDataStructure",
        "SwiftUmegHelper"
      ],
      path: "AppSwift/Sources"
    ),
    .target(
      name: "SwiftDataStructure",
      dependencies: ["SwiftUmegHelper"],
      path: "SwiftDataStructure/Sources"
    ),
    .target(
      name: "SwiftAlgorithm",
      dependencies: [
        "SwiftDataStructure",
        "SwiftUmegHelper"
      ],
      path: "SwiftAlgorithm/Sources"
    ),
    .target(
      name: "SwiftUmegChallenge",
      dependencies: [
        "SwiftDataStructure",
        "SwiftAlgorithm",
        "SwiftUmegHelper"
      ],
      path: "SwiftUmegChallenge/Sources"
    ),
    .target(
      name: "SwiftUmegHelper",
      dependencies: [],
      path: "SwiftUmegHelper/Sources"
    ),
    .testTarget(
      name: "AppSwiftTests",
      dependencies: ["AppSwift"],
      path: "AppSwift/Tests"
    ),
    .testTarget(
      name: "SwiftDataStructureTests",
      dependencies: ["SwiftDataStructure"],
      path: "SwiftDataStructure/Tests"
    ),
    .testTarget(
      name: "SwiftAlgorithmTests",
      dependencies: ["SwiftAlgorithm"],
      path: "SwiftAlgorithm/Tests"
    ),
    .testTarget(
      name: "SwiftUmegChallengeTests",
      dependencies: ["SwiftUmegChallenge"],
      path: "SwiftUmegChallenge/Tests"
    ),
    .testTarget(
      name: "SwiftUmegHelperTests",
      dependencies: ["SwiftUmegHelper"],
      path: "SwiftUmegHelper/Tests"
    )
  ]
)
