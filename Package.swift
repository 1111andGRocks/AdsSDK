// swift-tools-version: 5.9
import PackageDescription

/// Бинарный XCFramework с [Releases](https://github.com/1111andGRocks/AdsSDK/releases).
/// Локальная пересборка: `./Scripts/build-xcframework.sh` (скрипт не в публичном репо).
///
/// В приложении: `import GrocksAdsKit`, `GrocksAds.setApiKey` / `showAd(completion:)`.
let package = Package(
    name: "GrocksAds",
    platforms: [
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "GrocksAds",
            targets: ["GrocksAdsKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "GrocksAdsKit",
            url: "https://github.com/1111andGRocks/AdsSDK/releases/download/0.1/GrocksAdsKit.xcframework.zip",
            checksum: "c4fb660902a3d663e95f63c0b9f90eeee214c1ef4738390f768ff6434334d5a6"
        ),
    ]
)
