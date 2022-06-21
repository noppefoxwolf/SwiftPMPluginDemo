// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPMPluginDemo",
    platforms: [.macOS(.v12)],
    products: [
        .plugin(name: "SwiftPMPlugin", targets: ["Plugin"])
    ],
    targets: [
        .plugin(
            name: "Plugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "PluginBinary")
            ]
        ),
        .executableTarget(
            name: "PluginBinary"
        ),
        
        // Example
        .executableTarget(
            name: "App",
            plugins: [
                .plugin(name: "Plugin")
            ]
        ),
    ]
)
