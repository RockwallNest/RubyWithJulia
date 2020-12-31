using CSV 
using DataFrames
using StatsPlots

btc_df = CSV.File("./btc_jpy.csv") |> DataFrame
@df btc_df plot(:time, [:best_bid :best_ask :ltp], legend = :bottomright, title="BTC_JPY,Bitflyer.com 12/31/2020")
