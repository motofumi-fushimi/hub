---
title: スライド テンプレート
hide:
  - toc
---

<style>
  /* 1. タイトルを隠す */
  .md-typeset h1 { display: none; }

  /* 2. 親要素(.md-content)の設定 */
  /* website.css に負けないよう html body をつけます */
  html body .md-content {
    /* Flexboxレイアウトを有効化し、中身を枠内に強制的に収めます */
    display: flex !important;
    flex-direction: column !important;

    /* 余計なマージン・パディングを削除 */
    margin: 0 !important;
    padding: 0 !important;

    /* 幅の制限を解除（ただし親グリッドの最大幅には従う） */
    max-width: none !important;
    width: auto !important;
    min-width: 0 !important; /* 縮小を許可 */
  }

  /* 3. 中身(.md-content__inner)の設定 */
  html body .md-content__inner {
    /* 幅を固定せず(auto)、親に合わせて伸縮させる */
    width: auto !important;
    max-width: 100% !important;

    /* 余白を削除 */
    margin: 0 !important;
    padding: 0 !important;

    /* ここもFlexboxにして中身(iframe)を広げる */
    display: flex !important;
    flex-direction: column !important;
    flex-grow: 1 !important;
  }

  /* 4. pタグのパディングを消去 */
  html body .md-content__inner p {
    padding: 0 !important;
    margin: 0 !important;
    display: flex !important; /* pタグもFlexコンテナ化 */
    flex-direction: column !important;
    width: 100% !important;
  }
</style>

<iframe
  src="../slidedeck.html"
  style="
    width: 100%;
    aspect-ratio: 16 / 9;
    border: none;
    outline: 1px solid #ccc;
    display: block;
  "
></iframe>
