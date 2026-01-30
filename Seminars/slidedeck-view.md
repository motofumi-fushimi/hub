---
title: スライド テンプレート
hide:
  - toc
---

<style>
  /* 1. タイトルを非表示 */
  .md-typeset h1 { display: none; }

  /* 2. 親要素(.md-content)を強制的に「ただの箱」に戻す */
  /* website.css よりも強いセレクタ(html body ...)を使います */
  html body .md-content {
    /* Flex/Gridの干渉を排除し、ブロック要素として扱います */
    display: block !important;

    /* 余計な幅制限や余白をすべてゼロにします */
    min-width: 0 !important;
    width: auto !important; /* 親(grid)の幅に従う */
    max-width: none !important;
    margin: 0 !important;
    padding: 0 !important;
  }

  /* 3. 中身(.md-content__inner)の調整 */
  html body .md-content__inner {
    /* ここもブロック要素にして、幅は親に従わせます(auto) */
    display: block !important;
    width: auto !important;
    max-width: none !important;
    margin: 0 !important;
    padding: 0 !important;
  }

  /* 4. website.cssのpタグ余白(0.5em)を無効化 */
  /* これが「1文字分のはみ出し」の犯人です */
  html body .md-content__inner p {
    padding: 0 !important;
    margin: 0 !important;
  }

  /* 5. iframe用コンテナの安全装置 */
  .iframe-container {
    /* 幅を「100%」ではなく「auto」にすることで、親のパディングの内側に収めます */
    width: auto;

    /* 余計な隙間を消す */
    margin: 0;
    padding: 0;

    /* はみ出した部分をカットする保険 */
    overflow: hidden;
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
      display: block;
    "
    onload="try{const s=this.contentWindow.document.querySelector('svg').viewBox.baseVal;this.style.aspectRatio=`${s.width}/${s.height}`}catch(e){}"
  ></iframe>
</div>
