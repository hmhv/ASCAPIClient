// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "ASC",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ASC",
            targets: ["ASC"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "ASC",
            dependencies: [],
            path: "Sources/ASC"
        ),
    ],
    swiftLanguageModes: [.v6]
)
