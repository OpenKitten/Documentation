import PackageDescription

let package = Package(
    name: "VaporExample",
    dependencies: [
        .Package(url: "https://github.com/OpenKitten/MongoKitten.git", "3.0.0-beta"),
        .Package(url: "https://github.com/Vapor/Vapor.git", majorVersion: 1),
    ]
)
