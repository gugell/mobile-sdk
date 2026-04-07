// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MatrixNativeArtifacts",
    platforms: [.iOS(.v15)],
    products: [
      .library(
        name: "MatrixSDK",
        targets: ["MatrixSDK"],
      ),
    ],
    targets: [
      .target(
        name: "MatrixSDK",
        dependencies: ["MatrixSDKInternal", "Clarity", "OpenSSL", "hermesvm"],
        path: "Sources/MatrixSDK",
      ),
      .binaryTarget(
        name: "MatrixSDKInternal",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/MatrixSDKInternal.xcframework.zip",
        checksum: "172570ef270c32db0e51760475143329fa5831eef1bbccfde88669051c59c9a9",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "03a9dfb7b72351efd330c4037173c6e1213bf360932dbcd769073e429604bb6e",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "11906902934d0ad41f9bdb47b1f7a82ce63eaebd586134cbfe9d111109a52481",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "761b92726b23f6f732d0001bfee94ddde0f0898ebeb201afe54ecad399515ba9",
      ),
    ]
)
