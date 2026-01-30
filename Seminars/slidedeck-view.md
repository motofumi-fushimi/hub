---
title: スライド テンプレート
hide:
  - toc
---

<style>
  /* 1. タイトルを隠す */
  .md-typeset h1 { display: none; }

  /* 2. コンテンツエリアの強力なリセット (website.cssの上書き) */
  /* html body をつけて優先度を高めています */
  html body .md-content__inner {
    /* 左メニューの隣に寄せる */
    margin-left: 0 !important;
    padding-left: 0 !important;

    /* 右側を親要素（GitHubアイコンのライン）で止める */
    margin-right: 0 !important;
    padding-right: 0 !important;

    /* 【最重要】幅は「指定しない(auto)」ことで、空きスペースにフィットさせる */
    width: auto !important;
    max-width: none !important;

    /* 万が一のはみ出しをカットする保険 */
    overflow: hidden !important;
  }

  /* 3. website.css の pタグ余白を無効化 */
  html body .md-content__inner p {
    padding: 0 !important;
    margin: 0 !important;
  }

  /* 4. iframeを入れる箱を用意 */
  .iframe-container {
    width: 100%;
    /* 余計な隙間を排除 */
    font-size: 0;
    line-height: 0;
  }
</style>

<div class="iframe-container">
  <iframe
    src="../slidedeck.html"
    style="
      width: 100%;
      aspect-ratio: 16 / 9;
      border: none;
      outline: 1px solid #ccc;
      display: block; /* ブロック要素にして隙間を埋める */
    "
  ></iframe>
</div>
