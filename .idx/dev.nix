{ pkgs, ... }: {

  channel = "unstable";

  packages = [
    pkgs.nodejs_20
    pkgs.texlive.combined.scheme-full
  ];

  env = {};

  idx = {

    extensions = [
      "yzhang.markdown-all-in-one"        # Markdown入力支援
      "marp-team.marp-vscode"             # スライド作成 (Marp)
      "james-yu.latex-workshop"           # LaTeX執筆・プレビュー
      "github.vscode-pull-request-github" # GitHub PR管理
      "github.vscode-github-actions"      # GitHub Actions監視
    ];

    workspace = {
      onCreate = {
        install-firebase = "npm install -g firebase-tools";
      };
      onStart = {
      };
    };
  };
}
