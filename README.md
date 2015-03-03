# 概要:

PStoreデータベースの内容をJSON形式で出力するコマンドです。

# コマンド

  pstore json DBFILE

Options:
  [--require=REQUIRE]  # 読み取り前に実行されるRubyスクリプトファイル。カンマ区切りで複数指定できます。

PStore データベースの内容をJSON形式で出力します。

# 実行例

test/books.rb にて定義されたクラスのデータを含む
データベース /tmp/books を読み取り、結果をJSON形式で出力。

```bash
$ ./pstore json /tmp/books --require test/book.rb
```

出力例:

```json
[{"1":{"name":"書籍1","price":1000}},{"2":{"name":"書籍2","price":2000}},
{"3":{"name":"書籍3","price":3000}},{"4":{"name":"書籍4","price":4000}},
{"5":{"name":"書籍5","price":5000}},{"6":{"name":"書籍6","price":6000}},
{"7":{"name":"書籍7","price":7000}},{"8":{"name":"書籍8","price":8000}},
{"9":{"name":"書籍9","price":9000}},{"10":{"name":"書籍10","price":10000}}]
```
