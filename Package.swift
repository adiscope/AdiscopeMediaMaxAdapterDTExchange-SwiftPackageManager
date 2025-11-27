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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.4.0"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "72446426997f3794eee71d6800af8c468bb5cf7c11a9554da714da240045fce8"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/IASDKCore.xcframework.zip",
            checksum: "2c7718cc75f1c685556baffbf92071936cbdca0a2c82e83c0f2dffe8b1f4b01f"
        ),
    ]
)
