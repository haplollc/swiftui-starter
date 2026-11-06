// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "SwiftUIStarter",
    platforms: [.iOS(.v17)],
    dependencies: [
        .package(url: "https://github.com/haplollc/ThinkingOrbs", from: "1.0.0"),
        .package(url: "https://github.com/haplollc/Minted", from: "1.0.0"),
        .package(url: "https://github.com/haplollc/ClayGlobe", from: "1.0.0"),
    ],
    targets: [
        .executableTarget(
            name: "SwiftUIStarter",
            dependencies: [
                .product(name: "ThinkingOrbs", package: "ThinkingOrbs"),
                .product(name: "Minted", package: "Minted"),
                .product(name: "ClayGlobe", package: "ClayGlobe"),
            ]
        )
    ]
)
