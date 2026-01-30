# LaTeX

LaTeX環境および自作運用しているパッケージ群の説明

- [LaTeX](#latex)
  - [エンジン・ドライバ・クラス](#エンジンドライバクラス)
  - [パッケージ](#パッケージ)
  - [基本設定](#基本設定)
    - [版面](#版面)
    - [強調](#強調)
  - [数式設定](#数式設定)
    - [定理環境](#定理環境)
    - [数式関係のマクロ](#数式関係のマクロ)
  - [書体設定](#書体設定)
    - [欧文](#欧文)
    - [和文](#和文)
    - [具体的な設定](#具体的な設定)
  - [メモ](#メモ)

## エンジン・ドライバ・クラス

エンジンは和文（和欧混合文）の場合upLaTeXかLuaLaTeX，欧文の場合pdfLaTeXかLuaLaTeXを使用する．
upLaTeX使用時のdviドライバはdvipdfmxとする．

ドキュメント用のクラスは以下の通りとする．

- 和文：`(lt)jsarticle`/`(lt)jsreport`/`(lt)jsbook`/`jlreq`
- 欧文：`article`/`report`/`book`

スライド・ポスター用のクラスは以下の通りとする．

- 和文：`ltjsbeamer`
- 欧文：`beamer`

なお，ソースファイルの文字コードはUTF-8とする．

## パッケージ

複雑なプリアンブルをファイルごとに書くのは統一性や可搬性を損なうので，自作のスタイルファイルとしてプリアンブルをまとめ，texのファイルシステムが認識できるように保存しておく．

- `lab-base.sty`：版面，ルビ・圏点，目次，ヘッダー・フッター，ノンブル，注釈，索引，ハイパーリンク
- `lab-math.sty`：数式組版，定理環境，数式用記号・マクロ
- `lab-font.sty`：和文書体，欧文書体，数式書体

> すべて統合して単一のlab.styを作る

## 基本設定

article/report/book/resume/poster/slideのオプションを定めている．
posterとslideは`beamer`/`ltjsbeamer`クラスを用いて作成することを前提としている．

### 版面

版面は基本的にはクラスファイルの規定値を尊重している．

### 強調

規定の`\emph`に加えて`\Emph`コマンドを用意してる．
意味は和文（和欧混合文）か欧文かで変化する．

- 和文：bfウェイトのサンセリフ体
- 欧文：bfウェイトのセリフ体イタリック

## 数式設定

伝統的な`traditional`とISO規格に準拠した`standard`のオプションを用意．

### 定理環境

以下の定理系環境を用意している．
スタイルは独自に定義し直しており背景がグレーになる．
番号はセクションごとに連番になる．

- 定義(definition)
- 定義(definitions)
- 定理(theorem)
- 命題(proposition)
- 事実(fact)
- 補題(lemma)
- 系(corollary)
- 例(example)
- 例(examples)
- 問題(problem)
- 解(solution)
- 証明(proof)

主に使用されるのは定義，定理，補題，系，証明の五種類と思われる．

### 数式関係のマクロ

ベクトル，テンソル等は`\symbf`等のコマンドを用いず`\vct`，`\tns`を事前に定義して用いる．
集合，作用素等に関しても`\symbb,\symcal,\symfrak`を文中で用いるのは極力避け，プリアンブルで必要なものを定義しておく．

量の表記に関して，物理量には以下の書体を用いる．

|スカラー|ベクトル|テンソル|
|--|--|--|
|serif, italic, normal|serif, italic, bold|sans, italic, bold|

数ベクトルや行列には以下の書体を用いる．

|スカラー|ベクトル|行列と多次元配列|
|--|--|--|
|serif, italic, normal|serif, upright, bold|sans, upright, bold|

具体的なマクロの一覧はスタイルファイルを参照．

## 書体設定

スタイルとしてOld/Transitional/Modernの3種類のオプションを用意している．

### 欧文

pdfLaTeXとupLaTeXの場合は各フォントパッケージ，LuaLaTeXの場合は`fontspec(nuicode-math)`パッケージにより設定する．
pdfLaTeXとupLaTeXの場合はPostScript Type1フォントが，LuaLaTeXの場合はOpenTypeフォントが用いられることになる．

### 和文

upLaTeXの場合は`pxchfon`パッケージ，LuaLaTeXの場合は`luatexja-preset`パッケージによりプリセットを行う．

OpenTypeフォントの機能を活かすため，`japanese-otf`パッケージを読み込む．
upLaTeXの場合は`otf`パッケージを`uplatex`オプションで，LuaLaTeXの場合は`luatexja-otf`パッケージを読み込む．

単ウェイトの場合は明朝体(Regular)とゴシック体(Medium)の2書体を用い，多ウェイトの場合は`otf`パッケージの`deluxe`オプションにより明朝体(Light,Regular,Bold)と角ゴシック体(Regular,Bold,Heavy)，さらに丸ゴシック体の7書体を設定する．

### 具体的な設定

欧文は上段がpdfLaTeXで使用されるType1フォントで下段がLuaLaTeXで使用されるOpenTypeフォント．

|スタイル|明朝|ゴシック|セリフ|サンセリフ|モノスペース|数式|
|---|---|---|---|---|---|---|
|Old|Source Han Serif|Source Han Sans|NewPXText TexGyrePagella|TeXGyreHeros|TeXGyreCursor|NewPXMath AsanaMath|
|Transitional|Source Han Serif|Source Han Sans|NewTXText TexGyreTermes|TeXGyreHeros|TeXGyreCursor|NewTXMath XITSMath|
|Modern|Source Han Serif|Source Han Sans|LatinModernRoman|LMSans|LMMono|LMMath|

## メモ

- [括弧類を定義するDeclarePairedDelimiter](https://mathlandscape.com/declarepaireddelimiter/)
