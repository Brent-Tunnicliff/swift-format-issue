// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-format-issue",
    products: [
        .library(
            name: "swift-format-issue",
            targets: ["swift_format_issue"]
        ),
    ],
    targets: [
        .target(name: "swift_format_issue")
    ]
)
