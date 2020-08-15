# Pong
ネットワークマルチプレイ対応 Pong です。

## ビルド

### Windows 10

#### 必要なもの

* Git
* CMake
* Visual Studio 2019
* [OpenSSL バイナリー](https://slproweb.com/products/Win32OpenSSL.html)
  * Light がついてないものをインストールすること

#### ロケール設定

日本語ロケールを使用している場合、 [ワールドワイド言語サポートでUnicode UTF-8を使用](https://news.mynavi.jp/article/win10tips-444/) を有効にすること。
こうしないと protobuf のビルドに失敗するため。

#### 手順

1. このリポジトリをクローンします。
2. `git submodule update --init --recursive`
3. `mkdir build`
4. `cmake -G "Visual Studio 16 2019" ..`
5. `cmake --build . --config Release`
