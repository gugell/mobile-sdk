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
    ],
    targets: [
      .binaryTarget(
        name: "MatrixSDK",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/MatrixSDK.xcframework.zip",
        checksum: "154194d2df01db245eca13f75025bbf8e6759775209c6d92253d197b82757a5b",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "3bf687d4339133ab33e56a31167865648e859d93f5c9ec0381c87ddb9ded7fb9",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "23c1efc98f07d7a8c6efb262880c59c879e173dbaf717e8365b80fa06493fc5f",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "68e747e2e8eace97e25b4565075bdf950a6e998bc05fcd35700d6653e5819bda",
      ),
    ]
)
