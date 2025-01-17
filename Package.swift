// swift-tools-version:5.2
import PackageDescription

let package = Package(
    name: "stripe",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "Stripe", targets: ["Stripe"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/andreanzi/stripe-kit.git", from: "17.1.3"),
    ],
    targets: [
        .target(name: "Stripe", dependencies: [
            .product(name: "StripeKit", package: "stripe-kit"),
            .product(name: "Vapor", package: "vapor"),
        ]),
    ]
)
