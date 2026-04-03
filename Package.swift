// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MatrixNativeArtifacts",
    platforms: [.iOS(.v15)],
    products: [
      .library(
        name: "MatrixSDK",
        targets: ["MatrixSDK", "Clarity", "OpenSSL", "hermesvm"],
      ),
      .library(
        name: "Clarity",
        targets: ["Clarity"],
      ),
      .library(
        name: "OpenSSL",
        targets: ["OpenSSL"],
      ),
      .library(
        name: "hermesvm",
        targets: ["hermesvm"],
      ),
    ],
    targets: [
      .target(
        name: "MatrixSDK",
        dependencies: ["matrixbrownfield"]
      ),
      .binaryTarget(
        name: "matrixbrownfield",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/MatrixSDK.xcframework.zip",
        checksum: "42a9be6821dacbea9fd78c67736e1a868cbf1059aa12cb762da2bc10330d42ad",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "0ad7f93846f05aa187d0f673916ff818fa0bc4de45d67f07a6d5da8077059af0",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "8fef6c7474f1b1d11a4f3004376e5e45c9105acbf6be9f5373e727752ce14d66",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "624c4add09f01ea9cf0ebf5155424d6e989f2cd2db95885aeaf8fe92a82a8f2c",
      ),
    ]
)
