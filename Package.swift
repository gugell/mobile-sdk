// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MatrixNativeArtifacts",
    platforms: [.iOS(.v15)],
    products: [
      .library(
        name: "bigbasketdotabrownfield",
        targets: ["bigbasketdotabrownfield", "Clarity", "OpenSSL"],
      ),
      .library(
        name: "hermesvm",
        targets: ["hermesvm"],
      ),
      .library(
        name: "Clarity",
        targets: ["Clarity"],
      ),
      .library(
        name: "OpenSSL",
        targets: ["OpenSSL"],
      ),
    ],
    targets: [
      .binaryTarget(
        name: "bigbasketdotabrownfield",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/bigbasketdotabrownfield.xcframework.zip",
        checksum: "a93d01f597e20f85c6f124e9200742538a3f20267008de92423e5cc536a462a6",
      ),
      .binaryTarget(
        name: "hermesvm",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/hermesvm.xcframework.zip",
        checksum: "281191680c2687fbfc170348e1266b969ce8e75d2f6882b23e0305f1324fea0f",
      ),
      .binaryTarget(
        name: "Clarity",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/Clarity.xcframework.zip",
        checksum: "6f618f4a40d5b2b3841b3e1733dab43756488b7c859985cbb3912372225a68f5",
      ),
      .binaryTarget(
        name: "OpenSSL",
        url: "https://sdks.s3.eu-north-1.amazonaws.com/OpenSSL.xcframework.zip",
        checksum: "11a6cfb55ac5a3aaf1839df151e8355bb6734e5a5e23a81bbe7504d33caf7818",
      ),
    ],
)
