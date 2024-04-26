// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "occlusion",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "occlusion",
            targets: [
                "occlusion",
                "occlusion_sdk_core",
                "occlusion_effect_player",
                "occlusion_scripting",
                "occlusion_face_tracker"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/face_tracker.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "occlusion",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/occlusion.zip",
            checksum: "47849247962dcba1177b32af4716b3dec07de81f71da5597df0f71892f499c9a"
        ),
        .target(
            name: "occlusion_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "occlusion_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "occlusion_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
        .target(
            name: "occlusion_face_tracker",
            dependencies: [
                .product(
                    name: "face_tracker",
                    package: "face_tracker"
                ),
            ]
        ),
    ]
)
