// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CompilerArgsParser",
    platforms: [.macOS(.v11)],
    products: [
        .library(
              name: "CompilerArgsParser",
              targets: ["CompilerArgsParser"]),
    ],
    dependencies: [
        .package(name: "SwifterRe", url: "https://github.com/pol-piella/swifter-re.git", .exact("1.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CompilerArgsParser",
            dependencies: ["SwifterRe"]),
    ]
)
