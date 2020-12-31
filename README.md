# RubyWithJulia
自作RubyのBot。
## RubyでbitFlyerのAPIをたたいてみた...
bitFlyerのAPIをたたいて、Bitcoinのticker情報を取得します。<br>
ticker情報は10だけプリントします。<br>
接頭の時刻はTimeオブジェクトに変換して、CSVファイルに出力してグラフ化できるようにしてあります。<br>
末尾の時刻はtimestampそのもので、元データとして残してあります。<br>
RやJuliaなどを使えばグラフ描画はできます。<br>

# Requirements 

ruby 3.0.0p0 [x86_64-darwin20]で動作を確認ずみ。<br>
ruby-2.7.2 などでも、bunlde installから実行できます。<br>

# Usage
## ローカルで作成、実行します。
$ https://github.com/RockwallNest/Ruby-.git
$ cd Ruby-
$ bundle config set --local path vendor/bundle <br>
$ bunlde install <br>
$ bundle exec ruby inspect_bitlfyer_info.rb <br>

### 出力例
　time,best_bid,best_ask,ltp,timestamp<br>
  00:22:04,2896610.0,2898103.0,2898587.0,2020-12-30T15:22:04.697<br>
  00:22:08,2896610.0,2898102.0,2898587.0,2020-12-30T15:22:08.663<br>
  00:22:11,2896610.0,2898102.0,2898587.0,2020-12-30T15:22:11.337<br>
  00:22:14,2896610.0,2898100.0,2898587.0,2020-12-30T15:22:14.82<br>
  00:22:18,2896610.0,2898100.0,2898587.0,2020-12-30T15:22:18.113<br>
  00:22:21,2896610.0,2898092.0,2898587.0,2020-12-30T15:22:21.09<br>
  00:22:23,2895558.0,2896248.0,2895843.0,2020-12-30T15:22:23.397<br>
  00:22:26,2893498.0,2895248.0,2894434.0,2020-12-30T15:22:26.723<br>
  00:22:29,2893499.0,2895136.0,2895137.0,2020-12-30T15:22:29.913<br>
  00:22:33,2893501.0,2895106.0,2895106.0,2020-12-30T15:22:33.507<br>
 
 ### グラフ描画
 $ bundle exec ruby inspect_bitflyer_info.rb > btc_jpy.csv <br>
 
 $ julia             # juliaを起動する　<br>
 > include("plot_bitflyer_info.jl")

# Author
RockwallNest <br>

# Copyright
Copyright 2020 RockwallNest. This software is released under the MIT License. <br>
