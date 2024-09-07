// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FCPXMLCodable",
  platforms: [.iOS("13.0")],
              products: [
                // Products define the executables and libraries produced by a package, and make them visible to other packages.
                .library(
                  name: "FCPXMLCodable",
                  targets: ["FCPXMLCodable"]),
              ],
              dependencies: [
                .package(url: "https://github.com/MaxDesiatov/XMLCoder.git", from: "0.8.0")
              ],
              targets: [
                // Targets are the basic building blocks of a package. A target can define a module or a test suite.
                // Targets can depend on other targets in this package, and on products in packages which this package depends on.
                .target(
                  name: "FCPXMLCodable",
                  dependencies: ["XMLCoder"]),
                .testTarget(
                  name: "FCPXMLCodableTests",
                  dependencies: ["FCPXMLCodable"]),
              ]
  )
