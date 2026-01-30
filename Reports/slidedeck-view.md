---
title: スライド テンプレート
hide:
  - toc
---

<style>
  /* 1. H1タイトルを非表示 */
  .md-typeset h1 { display: none; }

  /* 2. 親要素(.md-content)のFlexboxルールを上書き 【今回の核心】 */
  /* html bodyをつけることで、website.cssよりも優先順位を最強にします */
  html body .md-content {
    /* 【重要】これを入れないとFlexboxの子要素は縮小できず、はみ出します */
    min-width: 0 !important;

    /* 左メニューの隣に寄せるためのリセット */
    margin: 0 !important;
    padding: 0 !important;

    /* 幅制限の完全解除 */
    width: auto !important;
    max-width: none !important;
    display: block !important; /* Flex挙動による予期せぬ隙間も排除 */
  }

  /* 3. 中身(.md-content__inner)のリセット */
  html body .md-content__inner {
    /* ここも最小幅0にして縮小可能にする */
    min-width: 0 !important;
    margin: 0 !important;
    padding: 0 !important;
    width: 100% !important;
  }

  /* 4. website.cssのpタグ余白を無効化 */
  html body .md-content__inner p {
    padding: 0 !important;
    margin: 0 !important;
  }
</style>

<div style="width: 100%; overflow: hidden;">
  <iframe
    src="../slidedeck.html"
    style="
      width: 100%;
      aspect-ratio: 16 / 9;
      border: none;
      outline: 1px solid #ccc;
      display: block;
      box-sizing: border-box; /* 枠線を含めたサイズ計算にする */
    "
  ></iframe>
</div>
