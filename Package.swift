// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CCairo",
    products: [
        .library(name: "CCairo",targets: ["CCairo"]),
    ],
    dependencies: [
    ],
        targets: [
        .systemLibrary(
            name: "CCairo",
            pkgConfig: "cairo",
            providers: [
                .apt(["libcairo-dev"]),
                .brew(["cairo"]),
            ]
        )
    ]
)