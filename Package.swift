// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MatrixNativeArtifacts",
    platforms: [.iOS("15.1")],
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
        path: "xcframeworks/bigbasketdotabrownfield.xcframework",
      ),
      .binaryTarget(
        name: "hermesvm",
        path: "xcframeworks/hermesvm.xcframework",
      ),
      .binaryTarget(
        name: "Clarity",
        path: "xcframeworks/Clarity.xcframework",
      ),
      .binaryTarget(
        name: "OpenSSL",
        path: "xcframeworks/OpenSSL.xcframework",
      ),
    ],
);
