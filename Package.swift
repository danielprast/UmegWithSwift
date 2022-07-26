// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "UmegWithSwift",
  platforms: [
    .macOS(.v10_12),
    .iOS(.v11)
  ],
  products: [
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
  dependencies: [],
  targets: [
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
