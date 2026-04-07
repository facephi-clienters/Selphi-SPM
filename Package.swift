// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Selphi-SPM",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Selphi-SPM",
            targets: ["Selphi-SPM", "FPhiWidgetCore", "FPhiWidgetSelphi"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/FPHIRecognitionHelper-SPM.git", .upToNextMajor(from: "3.27.2")),
        .package(url: "git@github.com:facephi-clienters/FPHISelphiResources-SPM.git", .exactItem("6.1.0")),
        .package(url: "git@github.com:facephi-clienters/FPBTokenizer-SPM.git", .exactItem("4.0.4")),
        .package(url: "git@github.com:facephi-clienters/FPHILicenseManager-SPM.git", .upToNextMajor(from: "0.5.7"))

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Selphi-SPM",
            dependencies: [
                "FPhiWidgetCore",
                "FPhiWidgetSelphi",
                .product(name: "FPHIRecognitionHelper-SPM", package: "FPHIRecognitionHelper-SPM"),
                .product(name: "FPBTokenizer-SPM", package: "FPBTokenizer-SPM"),
                .product(name: "FPHILicenseManager-SPM", package: "FPHILicenseManager-SPM")]),

        .binaryTarget(name: "FPhiWidgetCore",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiFrameworks/6.1.0/FPhiWidgetCore.zip",
        checksum: "279aea996db0edc651c45d89023760b2d652a4a8212a28d69f6c3cb0f09cd1ff"),
        .binaryTarget(name: "FPhiWidgetSelphi",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/Selphi/FPHISelphiFrameworks/6.1.0/FPhiWidgetSelphi.zip",
        checksum: "1623136682b97d36e16a14525198e016037f2b472d39c22a7402dcfae14962cc")
                
    ]
)
