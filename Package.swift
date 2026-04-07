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
        checksum: "d81e97d92860d93fa35c25d68e42ccf05d2e790f6e1fdd04cd55eb3ea67d6c35",
      ),
      .binaryTarget(
        name: "matrixbrownfield",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/matrixbrownfield.xcframework.zip",
        checksum: "730c2b66e1df4c16a2d88978bb53d76810d695e7c6d55aa3700fb84fce62fae2",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "9ffaf710949011cb599f5a9bd26711915b55d66e74c82c454a14d40010c182eb",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "90263a4ee00c74a8ebdafd837945077961a915cdc0ca36199a2d5fccb82052cc",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "1ee5a0febd4f234e501a1fcfafd8b27f60490c1b4bd972466d49635d9bce5759",
      ),
    ]
)
