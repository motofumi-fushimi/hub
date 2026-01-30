# Git

CIをmatlabでやるにはコンパイルという手がある．
ランタイムだけあれば実行できる．

## OpenSSH

Windowsの場合既定でsshクライアントソフトのOpenSSHがインストールされている．

関連ディレクトリは以下の通り．

- `$Env:WinDir/System32/OpenSSH`：ssh.exe, sshd.exe, scp.exe等の実行ファイル
- `$Env:ProgramData/ssh`：sshd_config
- `$Env:UserProfile/.ssh`：config, authorized_keys, known_hots, SSH鍵

以下の手順でssh keyを作成．

```powershell
cd $Env:UserProfile/.ssh # ssh関連ファイルのディレクトリに移動
ssh-keygen # パスフレーズの設定を求められる
cat ./id_rsa.pub # 生成された公開鍵の表示
ssh-add # エージェントの設定
```

表示された公開鍵をコピーしてサーバ側に登録する．

## Git

バージョン管理ソフト．
Git自体は個人で使用可能．

初期設定で名前と連絡先を登録しておく必要あり．
ここで設定した情報がコミット履歴等で表示される．

```bash
git config --global user.name 'YourFirstName YourLastName'
git config --global user.email 'your-email-address@g.ecc.u-tokyo.ac.jp'
git config --global core.sshcommand 'C:/Windows/System32/OpenSSH/ssh.exe'
```

## Azure DevOps

Git管理されているレポジトリのホスティングとプロジェクトの管理が可能．
有名なホスティングサービスとしてGithubやGitLabがある．

- Overview：概要
- Board：コミュニケーション用
- Repos：リモートリポジトリ
