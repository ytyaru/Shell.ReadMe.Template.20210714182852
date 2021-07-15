# READMEのテンプレートを作る

　READMEを半自動作成したい。準備としてテンプレートを作る。

# 手順

* 端末コマンドから一発でつくる
    * 引数を入力する
* GUIエディタで引数を入力する
* 設定ファイルから生成する

## コマンド

項目|形式|コマンド引数|GUIエディタ|設定ファイル
----|----|------------|-----------|------------
`title`|Markdown(GFM)|`-t`|○|○
`description`|Markdown(GFM)|`1`|○|○
`natural-languages`|`言語コード`, `言語コード-国コード`, `['en-gb', 'ja-jp']`|○|○
`cpu`|キーワード `x86`, `x64`, `armhf`
`os`|キーワード `windows`,`mac`,`android`,`linux-debian-raspberrypios`|
`sdk`|キーワード `Linux-Kernel`, `.NETCore5`, `MONO`, `g++`, `Python3.7`, `OpenJava`|○|○
`programming-languages`|キーワード `bash`, `C`, `C++`(`cc`,`cpp`), `C#`(`cs`), `rust`(`rs`)|○|○
`license`|ID-List `cc0`|○|○
`logo`|path `docs/logo.(png)`|○|○
`demo`|path `docs/demo.(png|gif|svg)`|○|○
`docs`|Markdown(GFM) `[API Reference](https://...)`|○|○

* CPU architecture
	* 32 bit
		* x86
		* i386
		* i686
		* IA-32
	* 64 bit
		* x64
		* x86_64
		* amd64
		* IA-64
		* Intel 64

## 言語キーワード

* Programming
	* `cs`,`c#`,`csharp`,`.net-c#`,`mono-c#`,`.net-c#-cui`
		* sdk
			* `.net`,`.netcore`,`.netcore5`,`dotnet`
			* `mono`
		* type
			* `cui`
			* `gui`
			* `lib`
			* `asp`
	* `c`
	* `cc`,`c++`,`cpp`
	* `rs`,`rust` 
	* `java`
		* sdk
			* openjava
			* oracle
* Script
	* `sh`
		* subset
			* `bash`
			* `sh`
			* `zsh`
	* `py`,`python`,`python3`,`python3.7`,`python3.7.3`
		* `system`
		* `pyenv global`
		* `pipenv`
		* package manager
			* `pip`
			* `venv`
		* type
			* cui
			* gui
			* tts
				* openjtalk
	* `go`
	* `rb`,`ruby`
	* `sql`
		* dbms
			* SQLite3
			* MySQL
			* PostglesQL
	* `js`
		* require
			* browser
			* node.js
	* `node`,`nodejs`,`node.js`
* markup
	* `html`
		* `pug`
		* `css`
			* `sass`
		* `js`
			* legacy
			* require.js
			* ES Module
			* `typescript`
	* `md`,`markdown`
		* common markdown
		* gfm (github flavored markdown	)
	* `ad`,`asciidoc`
* Structure Text
	* toml
	* yaml
	* json
	* xml

	

## 設定ファイル

　README生成するための設定ファイル。

```toml
[main]
sdk = '.NETCore5, MONO, OpenJava, Python3.7'
language = 'C#, Java'
format = """
{header}
{feature}
{requirement}
{installation}
{usage}
{note}
{author}
{license}
{urls}
"""
urls = """
[url1]:https://
[url2]:https://
[url3]:https://
"""

[header]
title = 'タイトル。[markdown](https://...)や<p>HTML</p>で書ける。{RepoName}がデフォルト値。'
description = '説明文。[markdown](https://...)や<p>HTML</p>で書ける。'
languages = ['en-gb', 'ja-jp']
license = 'cc0'
logo = 'docs/logo.(png)'
demo = 'docs/demo.(png|gif|svg)'
docs = '[API Reference](https://...)'
body = """
自由に書く。GitHubのREADMEに許されている書式で。すなわちMarkdownと一部のHTML。
"""
format = """{logo}

# {title} {languages}

{badges}
{description}

* demo: {demo}
* docs: {docs}
"""

[feature]
body = """
* ***特徴***を[Markdown][]で書く
* <b>特徴</b>をHTMLで書く
"""

[requirement]
language = python (pipenv)

[installation]
pakage-manager = pip

[usage]

[note]
body = """
"""

[author]
body = """
"""

[license]
body = """
"""

```

## template

README.{lang}.md
```
# {{title}} {{languages}}

{{badges}}

{{description}}

* demo: {{demo}}
* docs: {{docs}}

{{feature}}
{{requirement}}
{{installation}}
{{usage}}
{{note}}
{{author}}
{{license}}
{{urls}}
```

# READMEの構成

* Logo
* Project name
* Language
* Badge
* Description
* Demo link
* Document link
* Feature
* Requirement
* Installation
* Usage
* Note
* Author
* License

## Logo

　ちゃんとしたプロジェクトはロゴ画像を用意する。でも、ない場合がほとんど。なのでロゴがあるときだけ追加するようにしたい。たとえば`docs/logo.png`ファイルが存在したときだけREADME.mdに挿入する。

## Project name

　リポジトリ名をそのまま入れる。ただしオプションで別のテキストにできる。

## Languages

　READMEの別言語。ふつうは英語。オプションで日本語などを用意する。

　日本語で書いたものを英語に自動翻訳してから英語のREADMEを作りたい。翻訳はツールでやるとして、内容がMarkdownだったらスペースなどが入ってしまう。それはどうしようもないと諦めるか。

![GB|UK](https://raw.githubusercontent.com/madebybowtie/FlagKit/master/Assets/PNG/GB.png) English
![JP](https://raw.githubusercontent.com/madebybowtie/FlagKit/master/Assets/PNG/JP.png) Japanese

```markdown
# Project name [![JP](https://raw.githubusercontent.com/madebybowtie/FlagKit/master/Assets/PNG/JP.png)](README.ja.md "Japanese")
```

```html
<table>
<tr>
<td><a href="./README.en-gb.md"><img src="https://raw.githubusercontent.com/madebybowtie/FlagKit/master/Assets/PNG/GB.png"></a></td>
<td><a href="./README.ja-jp.md"><img src="https://raw.githubusercontent.com/madebybowtie/FlagKit/master/Assets/PNG/JP.png"></a></td>
</tr>
</table>
```

```html
<p align="center">
  <span>English</span> |
  <a href="https://github.com/alvarotrigo/fullPage.js/tree/master/lang/spanish#fullpagejs">Español</a> |
  <a href="https://github.com/alvarotrigo/fullPage.js/tree/master/lang/french#fullpagejs">Français</a> |
  <a href="https://github.com/alvarotrigo/fullPage.js/tree/master/lang/russian#fullpagejs">Pусский</a> |
  <a href="https://github.com/alvarotrigo/fullPage.js/tree/master/lang/chinese#fullpagejs">中文</a> |
  <a href="https://github.com/alvarotrigo/fullPage.js/tree/master/lang/korean#fullpagejs">한국어</a>
</p>
```

## Badge

　一目でリポジトリの状態がわかるヤツ。

* https://shields.io/

[![License](https://img.shields.io/badge/License-GPL-blue.svg)](https://www.gnu.org/licenses/gpl-3.0.html)

　以下のような項目についてバッジをつけたい。

* Dependencies
* build
* unit test coverage
* w3c valid
* size
* release version
* license
* Download

https://img.shields.io/github/license/ytyaru/lish?label=license&logo=cc0
https://img.shields.io/github/languages/code-size/ytyaru/lish

　プログラミング言語によってつけるバッジが異なる。たとえ要ビルドなC/C++ならビルドバッジをつける。しかしインタプリタ言語であるPythonはビルドバッジ不要。逆に依存関係としてPythonのバージョンや必要ライブラリとそのバージョンを示すべき。

## Description

　説明文。リポジトリの概要。

## Demo link

　このソフトウェアが動作するサイトへのリンク。GitHubPagesなどで実装する。

## Document link

　このソフトウェアに関する詳細なドキュメントへのリンク。たとえばライブラリなら、API Referenceなど。

## Feature

　このソフトウェアの特徴。見所。

## Requirement

　このソフトウェアを動作させるために必要なソフトウェア。そしてそれらをインストールする手順へのリンク。

## Installation

　Requirementをインストールする手順やコード。

## Usage

　このソフトウェアを動作させる手順やコード。使ってみた結果。

## Note

　このソフトウェアにおける注意。

## Author

　著者。他サービスへのリンク。

## License

　このソフトウェアにおけるライセンス。

