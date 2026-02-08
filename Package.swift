// swift-tools-version:5.9
//
// ⚠️  IMPORTANT: This Package.swift is used ONLY for IDE/LSP support (VS Code, etc.)
//
// The actual iOS app is built using Xcode and the Makefile.
// See:
//   - project.yml: Defines the Xcode project structure (via xcodegen)
//   - Makefile: Provides build commands (make generate, make build, make run)
//
// This file helps the language server understand local package dependencies.
// Do not rely on this for building the actual app.
//
import PackageDescription

let package = Package(
    name: "HelloWorldCLI",
    products: [
        .library(
            name: "HelloWorldCLI",
            targets: ["HelloWorldCLI"]
        )
    ],
    dependencies: [
        .package(path: "Packages/HelloWorldViews")
    ],
    targets: [
        .target(
            name: "HelloWorldCLI",
            dependencies: [
                .product(name: "HelloWorldViews", package: "HelloWorldViews")
            ],
            path: "Sources"
        )
    ]
)
