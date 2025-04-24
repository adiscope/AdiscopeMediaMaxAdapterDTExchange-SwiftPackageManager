// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaMaxAdapterDTExchange",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            targets: ["AdiscopeMediaMaxAdapterDTExchangeTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterDTExchangeTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterDTExchange"),
                .target(name: "IASDKCore"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "0d47d6ee4f7e7a381f81fe97e1d8b1f4873090ecfac0b9b798345e6eccf38acd"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/IASDKCore.xcframework.zip",
            checksum: "85d11954350be3f4ca9feefa3b6dc101c293f9224eda254b4c0b54f647ad5516"
        ),
    ]
)
