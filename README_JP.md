# Swift client for App Store Connect API with Swift Concurrency (async/await)

[App Store Connect API OpenAPI specification](https://developer.apple.com/documentation/appstoreconnectapi) と [OpenAPI Generator](https://openapi-generator.tech)で生成して、少しだけ手直し。

## Installation

### Swift Package Manager

#### ● Xcode
1. Xcode projectを開く
2. メニューで `File -> Add Packages...`を選択
3. 検索窓で `https://github.com/hmhv/ASCAPIClient.git`を入力後、`ASCAPIClient`を選択

![SPM with Xcode](images/README.md-10-34-34.png)

#### ● Package.swift
`Package.swift`の`dependencies`に`ASCAPIClient`を追加

```swift
dependencies: [
    .package(url: "https://github.com/hmhv/ASCAPIClient.git", .upToNextMajor(from: "3.4.2"))
]
```

## How to use
[ASCAPIClient-Example-iOS](https://github.com/hmhv/ASCAPIClient-Example-iOS)を参考にしてください。

## How to generate

生成時使ったコマンド

```bash
brew install openapi-generator

./gen6.sh
```

生成時使ったスペックファイルとテンプレートふぁいるは [ここ](./raw_data).

[Generated README.md by openapi-generator](./README_GENERATOR.md)
