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
        checksum: "e621c06943cc222127742e2c37b176136766cb68f95e785b37eb18a1afbdf1fd",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "b87ffa94cb3e11afe0c87294fd841a59376018698ed0a25654567f91c424dddb",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "48a3b7dbd620b538ccba95333d22c3cdfa1985922a5825baf7a810cc9e54de61",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "0ac8167c7a8c2797f0b0c1d0d87ab51a907f4457b139894228f6fd711c350ec1",
      ),
    ]
)
