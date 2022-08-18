# OpenSiv3D For Web  Visual Studio Codeサンプルプログラム実行用パッケージ

## 概要

emscripten, OpenSiv3D v0.6 for Web を使って WebGL + WebAssembly アプリケーションを作成できるように
Visual Studio Code の設定を済ませたパッケージです.

## 前提要件

- Visual Studio Code (1.42.1 で動作確認済み)
- [emscripten 2.0.22](https://emscripten.org)

emscripten の導入は <https://qiita.com/nokotan/items/5fa6f2d39ff7bb6641e8> や
<https://www.slideshare.net/llamerada-jp/cmu29> (やや読破難度高いスライド) が参考になると思います.

## 推奨インストール

### C/C++ インテリセンス

- [C/C++ VSCode Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

### デバッグ用の拡張機能

- [Debugger for Firefox](https://marketplace.visualstudio.com/items?itemName=firefox-devtools.vscode-firefox-debug)
- [WebAssembly on Chrome Debugger](https://marketplace.visualstudio.com/items?itemName=KamenokoSoft.cdp-gdb-bridge)
- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

## ビルド

- Ctrl(Cmd)+Shift+B (デバッグビルド)
- リリースビルドをしたいときは Ctrl(Cmd)+Shift+P でタスクの実行を選んで, Build Release

## 実行

- Ctrl(Cmd)+Shift+P でタスクの実行を選んで, Run Local Server and Open Browser
- デバッグウィンドウから **Launch Chrome against localhost** または **Launch Firefox against localhost**
  (Debugger for Firefox のインストールが必要)、**WebAssembly Debug**(WebAssembly on Chrome Debugger のインストールが必要)
  を選択して、デバッガを実行する

## デバッグ

- **WebAssembly Debug** を使ってビルドした場合のみ、ブレークポイントおよび変数デバッグが使用できます

## 質問点など

- To be announced...

## ライセンス表記

- このリポジトリ自体は MIT No Attribution ライセンスにて配布します
  - このリポジトリに含まれるファイルは、OpenSiv3D フォルダ配下のファイルを除いて、ライセンス表記なしで自由に利用可能です
- Siv3D 本体のライセンスは <https://siv3d.jp/web/license/0.6.5/license.html> を参照してください
- emscripten によって出力された JavaScript ファイルは [MIT ライセンス](https://github.com/emscripten-core/emscripten/blob/main/LICENSE) に従います

- - -

OpenSiv3D For Web  Copyright (C) 2021 かめのこにょこにょこ
