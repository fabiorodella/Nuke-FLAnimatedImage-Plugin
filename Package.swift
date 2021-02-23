// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Nuke-FLAnimatedImage-Plugin",
    platforms: [
        .iOS("11.0"),
        .macOS("10.13"),
    ],
    products: [
        .library(name: "Nuke-FLAnimatedImage-Plugin", targets: ["Nuke FLAnimatedImage Plugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kean/Nuke.git", from: "9.0.0"),
        .package(url: "https://github.com/Flipboard/FLAnimatedImage.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Nuke FLAnimatedImage Plugin",
            dependencies: [
                "Nuke",
                "FLAnimatedImage",
            ],
            path: "Source"),
    ],
    swiftLanguageVersions: [.v5]
)
