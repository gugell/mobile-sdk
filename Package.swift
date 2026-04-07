// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MatrixNativeArtifacts",
    platforms: [.iOS(.v15)],
    products: [
      .library(
        name: "MatrixSDK",
        targets: ["MatrixSDK", "matrixbrownfield", "Clarity", "OpenSSL", "hermesvm"],
      ),
      .library(
        name: "matrixbrownfield",
        targets: ["matrixbrownfield"],
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
      .binaryTarget(
        name: "MatrixSDK",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/MatrixSDK.xcframework.zip",
        checksum: "ba16257d985ab5fd719583965092d3d7a4c63e2a20c902718f669c49b60af1aa",
      ),
      .binaryTarget(
        name: "matrixbrownfield",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/matrixbrownfield.xcframework.zip",
        checksum: "9824767c9612a38af32794add726b859a9bb886af6ccc283a0ce432d7028fc7f",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "548eeeed1f59c4cf0cf81df963dea8b93d72e48742275dfc5c548d27e24db010",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "e8277b6060cca2dd3cee477cf32af27093f17169004560dd3b2fa836cd475361",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "361e62a24bba952346ed299e2bfb6fa078c132f23fa4340e53f0b21bbc1c8354",
      ),
    ]
)
