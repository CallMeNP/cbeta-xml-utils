# 爲處理 CBETA/xml 的一些臨時工具

## 發現 `<p>` 標籤之外的標點 punc-out-of-para

### 依賴
* xslt 解釋器：saxonb-xslt 。(ubuntu 中 apt 安裝 libsaxonb-java 即可)
* linux shell
* make
* cbeta-git/xml-p5a （相對與本 readme.md 文件，放在../../cbeta/xml-p5a。或在Makefile中修改路徑。）

### 使用
```shell
cd punc-out-of-para
make reports.xml -j4 # 4 是cpu內核數量
```

默認只處理了大正藏`T`系列文件。其他藏經可以通過修改 Makefile 中的路徑處理。