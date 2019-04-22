// swift-tools-version:4.2
import PackageDescription

let package = Package(
    name: "QminderAPIMock",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.3.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)
