// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//  Package.swift
//  SwiftParsec
//
//  Created by David Dufresne on 2016-05-10.
//  Copyright © 2016 David Dufresne. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "SwiftParsec",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v12), .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and
        // make them visible to other packages.
        .library(
            name: "SwiftParsec",
            targets: ["SwiftParsec"]
        ),
    ],
    targets: [
        .target(name: "SwiftParsec"),
        .testTarget(
            name: "SwiftParsecTests",
            dependencies: ["SwiftParsec"]
        )
    ]
)
