# WatchKitSample2
tableviewを使ったサンプル。いろいろはまったところはReadmeに記載

## 参考ページ
http://qiita.com/moriyaman/items/81bb876c20ccf6700e3d
あとアップルのドキュメントも見たけど、どれだか忘れた

## はまった部分

### fatal error: unexpectedly found nil while unwrapping an Optional value
多分nilじゃダメなところにnilをセットしようとしてたのがいけないんだけど、最初なんだかわからなかった
結局
self.table.setNumberOfRows(self.rows.count, withRowType:"default")
のwithRowTypeをdefaultにして解決

### Detailに遷移しない
Controllerに名前をつけないといけないのね。storyboardでDetailControllerを選択して、inspectorで名前をつけて解決




