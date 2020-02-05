// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftDataStructure",
    products: [
        .library(
            name: "SwiftDataStructure",
            targets: ["SwiftDataStructure"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftDataStructure",
            dependencies: []),
        .testTarget(
            name: "SwiftDataStructureTests",
            dependencies: ["SwiftDataStructure"]),
    ]
)
