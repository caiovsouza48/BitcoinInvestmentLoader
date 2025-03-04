// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "BitcoinInvestmentLoader",
    platforms: [
        .iOS(.v13), // Minimum iOS version
        .macOS(.v10_15), // Minimum macOS version
        .watchOS(.v6), // Minimum watchOS version
        .tvOS(.v13) // Minimum tvOS version
    ],
    products: [
        .library(
            name: "BitcoinInvestmentLoader",
            targets: ["BitcoinInvestmentLoader"]
        ),
    ],
    targets: [
        .target(
            name: "BitcoinInvestmentLoader",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "BitcoinInvestmentLoaderTests",
            dependencies: ["BitcoinInvestmentLoader"],
            path: "Tests"
        ),
    ]
)
