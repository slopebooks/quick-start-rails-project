# README

railsアプリの開発環境をサクッと整えたくて作りました。
とりあえず、
- ruby 2.5.1
- rails 5.2.0
- mysql 5.7.19

のみのシンプルな構成で。

```
docker-compose run --rm app rails new . --force --database=mysql --skip-bundle

docker-compose build

docker-compose up
```
