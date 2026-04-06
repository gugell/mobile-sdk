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
      .binaryTarget(
        name: "MatrixSDK",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/MatrixSDK.xcframework.zip",
        checksum: "99214151d99a3bda8e47ed96f5d5a7d3e38fc3820577dd8e633ef83202c32bde",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "c92da742f5c3948de6e5b50bde3c55d4b2e3702858a093cef82c334486609e68",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "0b00589242a60ed4eb25fc83169f0043a1f19d6cbe04cb709426dcb15bc297ac",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "d904a8a08e1f0ad6dcd538297d0b07ea8df44cfb19d3478d07d1371c0c083ef8",
      ),
    ]
)
