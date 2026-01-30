---
title: スライド テンプレート
hide:
  - toc
---

<style>
  /* 1. タイトルを隠す */
  .md-typeset h1 { display: none; }

  /* 2. 親要素(.md-content)のリセット 【ここが重要！】 */
  /* これまでここをリセットしていなかったため、中央寄せが残っていました */
  .md-content {
    /* 中央寄せ(auto)を解除して左詰めにする */
    margin-left: 0 !important;
    margin-right: 0 !important;

    /* 余計なパディングを消す */
    padding: 0 !important;

    /* 幅の制限をなくす */
    max-width: none !important;
    width: auto !important;

    /* Flexboxの子供として、余ったスペースを全部埋める設定 */
    flex-grow: 1 !important;
    display: block !important;
  }

  /* 3. 子要素(.md-content__inner)のリセット */
  .md-content__inner {
    /* 親と同じく制限解除 */
    margin: 0 !important;
    padding: 0 !important;
    width: 100% !important;
    max-width: none !important;
  }

  /* 4. website.css の pタグの余白(padding: 0 .5em)を無効化 */
  /* ここが残っていると width:100% と喧嘩してはみ出します */
  .md-typeset p {
    padding: 0 !important;
    margin: 0 !important;
  }

  /* 5. グリッド自体のはみ出し防止保険 */
  .md-grid {
    /* 万が一のために */
    max-width: var(--md-content-width) !important;
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
    "
  ></iframe>
</div>
