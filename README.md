# OpenSiv3D For Web  Visual Studio Codeサンプルプログラム実行用パッケージ

## 概要

emscripten, OpenSiv3D For Web を使って WebGL + WebAssembly アプリケーションを作成できるように
Visual Studio Code の設定を済ませたパッケージです.

## 前提要件

- Visual Studio Code (1.42.1 で動作確認済み)
- [emscripten 2.0.4](https://emscripten.org)

emscripten の導入は <https://qiita.com/nokotan/items/5fa6f2d39ff7bb6641e8> や
<https://www.slideshare.net/llamerada-jp/cmu29> (やや読破難度高いスライド) が参考になると思います.

## 推奨インストール

### C/C++ インテリセンス

- [C/C++ VSCode Extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

### デバッグ用の拡張機能

- [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
- [Debugger for Firefox](https://marketplace.visualstudio.com/items?itemName=firefox-devtools.vscode-firefox-debug)
- [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer)

## ビルド

- Ctrl(Cmd)+Shift+B (デバッグビルド)
- リリースビルドをしたいときは Ctrl(Cmd)+Shift+P でタスクの実行を選んで, Build Release

## 実行

- Ctrl(Cmd)+Shift+P でタスクの実行を選んで, Run Local Server and Open Browser
- Debugger for Chrome または Debugger for Firefox をインストール済みであれば Ctrl(Cmd)+Shift+P でタスクの実行を選んで, Run Local Server を選んだ後, デバッグの開始でデバッグができます

## デバッグ

- デバッグビルド時は C++ に対する SourceMap が有効になるので, C++ ソースファイル上にブレークポイントが仕掛けられます
- ただ, 変数ウォッチは機能しているか怪しい模様

## 質問点など

- To be announced...

## ライセンス表記

- MIT ライセンスにて配布します (基本的に何でもできると思います; 継承すべきライセンスも大丈夫だと思う...たぶん)

- - -

OpenSiv3D For Web  Copyright (C) 2021 かめのこにょこにょこ
