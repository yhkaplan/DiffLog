// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "DiffLog",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "DiffLog", targets: ["DiffLog"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-custom-dump.git", from: "0.1.2")
    ],
    targets: [
        .target(
            name: "DiffLog",
            dependencies: [.product(name: "CustomDump", package: "swift-custom-dump")]
        ),
        .testTarget(
            name: "DiffLogTests",
            dependencies: ["DiffLog"]
        )
    ]
)
