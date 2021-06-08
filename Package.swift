// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "VoucherifySwiftSdk",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "VoucherifySwiftSdk",
            targets: ["VoucherifySwiftSdk"]),
    ],
    dependencies: [
	    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.3.0")),
		.package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.2.0")),
    ],
    targets: [
        .target(
            name: "VoucherifySwiftSdk",
            dependencies:  ["Alamofire", "ObjectMapper"],
            path: "VoucherifySwiftSdk/Classes"),
    ]
)
