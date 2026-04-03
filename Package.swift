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
        name: "MatrixSDK",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/MatrixSDK.xcframework.zip",
        checksum: "b93067bf5826b18231dba9bfab4e21179b5988fa8f4d98f0a9104c661d53dbe1",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "6421ee4d89c07d200a59bb0b96f3d6e597c75c7c5a54176d1beee641fda3aa6c",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "60c4f945469992071ba0fdbb2912ce56733a262f365364e9fca354bd61ff9542",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "fbf6389eeed9f1f952a92188d006e531ee792e5c6bb8df9583325a04fba1785a",
      ),
    ]
)
