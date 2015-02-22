# Overview
it is sample of using tableview on watch kit.I written the point to notice on Readme. 

## Reference page
http://qiita.com/moriyaman/items/81bb876c20ccf6700e3d
I forgeted ohter pages which I checked.


## Point to notice

### fatal error: unexpectedly found nil while unwrapping an Optional value
maybe i set nil on where i must not set nil.but i don't know where bug is at first.
Finally
self.table.setNumberOfRows(self.rows.count, withRowType:"default")
I resolved this matter to set withRowType to default.


### it does not move to detail page.
i must set name to DetailController.I resolved this matter which to set name on inspector and to select DetailController on storyboard.
Controllerに名前をつけないといけないのね。storyboardでDetailControllerを選択して、inspectorで名前をつけて解決




