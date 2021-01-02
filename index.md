# RubyWithJulia
自作RubyのApp。

### 素朴にRubyでbitFlyerのAPIをたたいてみるAppをつくった...

#### App 概要
bitFlyerのAPIをたたいて、Bitcoinのticker情報を取得します。<br>
ticker情報は10だけ表示します。<br>
接頭の時刻はTimeオブジェクトに変換してあり、CSVファイルに出力してグラフ化できるようにしてあります。<br>
末尾の時刻はtimestampそのもので、元データとして残してあります。<br>
RやJuliaなどを使えばグラフ描画はできます。描画例あり。<br>
