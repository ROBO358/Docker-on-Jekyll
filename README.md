# Docker-on-Jekyll

Docker 上で動作する Jekyll

## 使用方法

1. 空の`./_site`ディレクトリを作成する
1. app 内に適当な変換元素材のファイルを置く
1. `docker compose up`を実行。\_site 内に変換後のファイルが生成される。
1. `localhost:4000`でもアクセスできる。
