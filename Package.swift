// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "HDWalletKit",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "HDWalletKit",
            targets: ["HDWalletKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto.git", "1.0.0" ..< "3.0.0"),
        .package(url: "https://github.com/sunimp/WWCryptoKit.Swift.git", .upToNextMajor(from: "1.3.4"))
    ],
    targets: [
        .target(
            name: "HDWalletKit",
            dependencies: [
                .product(name: "Crypto", package: "swift-crypto"),
                .product(name: "_CryptoExtras", package: "swift-crypto"),
                .product(name: "WWCryptoKit", package: "WWCryptoKit.Swift"),
            ]),
        .testTarget(
            name: "HDWalletKitTests",
            dependencies: [
                "HDWalletKit"
            ]),
    ]
)
