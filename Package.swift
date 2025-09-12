// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HSBCPaymentsSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "HSBCPaymentsSDK",
            targets: ["HSBCPaymentsSDK"]
        )
    ],
    dependencies: [
        .package(name: "HyperSDK", url: "https://github.com/juspay/hypersdk-ios.git", .exact("2.2.4")),
    ],
    targets: [
        .target(
            name: "HSBCPaymentsSDK",
            dependencies: [
                .product(name: "HyperSDK", package: "HyperSDK")
            ],
            path: "Sources/HSBCPaymentsSDK",
            resources: [
                .copy("../../Fuse.rb")
            ],
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("Constants"),
                .headerSearchPath("Utils"),
                .headerSearchPath("CheckoutLite")
            ]
        )
    ]
)