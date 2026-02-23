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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.5.1"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaMaxAdapterDTExchangeTarget",
            dependencies: [
                .target(name: "AdiscopeMediaMaxAdapterDTExchange"),
                .target(name: "AdiscopeMediaMaxAdapterDTExchangeMediationAdapter"),
                .target(name: "IASDKCore"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchange",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaMaxAdapterDTExchange.zip",
            checksum: "238a4cd8c339777b7c07524cc67bdc5d6c8d19ea1b08e69dcc4b5cf9e861c080"
        ),
        .binaryTarget(
            name: "AdiscopeMediaMaxAdapterDTExchangeMediationAdapter",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AppLovinMediationFyberAdapter.xcframework.zip",
            checksum: "80ab1cd604ba08ad45ffff98e8ba7b9f3a337ab031113486c0256b78d66462be"
        ),
        .binaryTarget(
            name: "IASDKCore",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/IASDKCore.xcframework.zip",
            checksum: "8aace3da1d23f609fbc839c71e677be637157b1bf10a3db1d8617807645b0050"
        ),
    ]
)
