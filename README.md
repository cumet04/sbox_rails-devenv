# Rails getting started app
sandbox用のRailsAppが欲しいときにサッと使えるようにするためのサンプルアプリケーションです。

[Rails公式のGetting started](https://guides.rubyonrails.org/getting_started.html)をコピペしたもので、追加でdevcontainer設定とrubocopが入っています。

個人的に使うことを想定しており、その他機能環境の追加やメンテナンスは保証しません。

## 使い方
1. `.env.sample`をコピーして`.env`とし、手元のshell環境の実行ユーザにあわせて調整する
2. ディレクトリをvscodeのRemote Development (Container)で開く
3. `rails server -b 0.0.0.0`
