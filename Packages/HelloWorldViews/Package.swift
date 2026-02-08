// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "HelloWorldViews",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "HelloWorldViews",
            targets: ["HelloWorldViews"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "HelloWorldViews",
            dependencies: []
        )
    ]
)
