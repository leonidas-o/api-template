// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporApp",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "2.2.2")
    ],
    targets: [
        .target(name: "App", 
            dependencies: ["Vapor"],
            exclude: [
                "Config",
                "Database",
                "Localization",
                "Public",
                "Resources",
            ]
        ),
        .target(name: "Run", dependencies: ["App"]),
    ]
)
