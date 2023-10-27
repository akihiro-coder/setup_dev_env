# 自宅での開発環境の構築
1. `cd ~/ && git clone `
2. `./install.sh`
3. `nvim`コマンドを叩き、`:PlugInstall`と打つ
4. nvimを一回閉じて再度開く
  - ここで、nodeのインストールを求められたら、[install nodejs](https://github.com/nodesource/distributions#installation-instructions)を参考に、次のコマンドを打ってインストールする。
```
sudo apt-get update && sudo apt-get install -y ca-certificates curl gnupg && sudo mkdir -p /etc/apt/keyrings && curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list
sudo apt-get update && sudo apt-get install nodejs -y
```
5. `:CocInstall coc-jedi`と打ち、python補完パッケージをインストールする
6. 必要に応じて、cocのパッケージをインストールする
