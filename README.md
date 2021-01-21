# RubyWithJulia
自作RubyのApp。

# Abstract
### 素朴にRubyでbitFlyerのAPIをたたいてみるAppをつくった...
bitFlyerのAPIをたたいて、Bitcoinのticker情報を取得します。<br>
ticker情報は10だけ表示します。<br>
接頭の時刻はTimeオブジェクトに変換してあり、CSVファイルに出力してグラフ化できるようにしてあります。<br>
末尾の時刻はtimestampそのもので、元データとして残してあります。<br>
RやJuliaなどを使えばグラフ描画はできます。<br>

# Requirements 

ruby 3.0.0p0 [x86_64-darwin20]で動作を確認ずみ。<br>
ruby-2.7.2 などでも、bunlde installから実行できます。<br>

# Usage
### ローカルで作成、実行します。
```
$ git clone https://github.com/RockwallNest/RubyWithJulia.git
$ cd RubyWithJulia 
$ bundle config set --local path vendor/bundle 
$ bunlde install 
$ bundle exec ruby inspect_bitlfyer_info.rb 
```
#### inspect_bitflyer_info.rbの出力例
 ```
　time,best_bid,best_ask,ltp,timestamp<br>
  00:22:04,2896610.0,2898103.0,2898587.0,2020-12-30T15:22:04.697
  00:22:08,2896610.0,2898102.0,2898587.0,2020-12-30T15:22:08.663
  00:22:11,2896610.0,2898102.0,2898587.0,2020-12-30T15:22:11.337
  00:22:14,2896610.0,2898100.0,2898587.0,2020-12-30T15:22:14.82
  00:22:18,2896610.0,2898100.0,2898587.0,2020-12-30T15:22:18.113
  00:22:21,2896610.0,2898092.0,2898587.0,2020-12-30T15:22:21.09
  00:22:23,2895558.0,2896248.0,2895843.0,2020-12-30T15:22:23.397
  00:22:26,2893498.0,2895248.0,2894434.0,2020-12-30T15:22:26.723
  00:22:29,2893499.0,2895136.0,2895137.0,2020-12-30T15:22:29.913
  00:22:33,2893501.0,2895106.0,2895106.0,2020-12-30T15:22:33.507
 ```
 
 #### julia グラフ描画例
 ```
 $ bundle exec ruby inspect_bitflyer_info.rb > btc_jpy.csv 

 $ julia             # juliaを起動する　
 
 julia\> include("plot_bitflyer_info.jl") 
 ```
 
 #### グラフ出力例 
 btc_jpy_bitlfyer.pngを参照。データ１０個ではこんなもんです...

# Author
RockwallNest <br />

# Copyright
Copyright &copy; 2020 RockwallNest. This software is released under the MIT License. <br>
