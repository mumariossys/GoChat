// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "eMoney",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "eMoney",
            targets: ["eMoney", "EFRSDK", "LeanSDK", "MDRSDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher.git", .upToNextMajor(from: "7.0.0")),
        .package(url: "https://github.com/SwiftKickMobile/SwiftMessages.git", .upToNextMajor(from: "9.0.0")),
        .package(url: "https://github.com/airbnb/lottie-spm.git", .upToNextMajor(from: "4.3.3")),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "eMoney", path: "./Sources/eMoneySDK.xcframework"),
        .binaryTarget(name: "EFRSDK", path: "./Sources/EFRSDK.xcframework"),
        .binaryTarget(name: "LeanSDK", path: "./Sources/LeanSDK.xcframework"),
        .binaryTarget(name: "MDRSDK", path: "./Sources/MDRSDK.xcframework")
    ]
)
