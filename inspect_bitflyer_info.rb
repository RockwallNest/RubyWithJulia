require "bundler/setup"
require "rubygems"
require "json"
require "uri"
require "net/http"
require "time"

uri = URI.parse("https://api.bitflyer.com")
uri.path = "/v1/ticker"

params = {"product_code" => "BTC_JPY"}
uri.query = URI.encode_www_form(params)

puts "time,best_bid,best_ask,ltp,timestamp\n"

10.times do 
  json = Net::HTTP.get(uri)
  result = JSON.parse(json)
  raw_time = Time.parse(result["timestamp"])
  raw_time = raw_time + 3600 * 9
  time = raw_time.strftime("%H:%M:%S")
  puts "#{time},#{result["best_bid"]},#{result["best_ask"]},#{result["ltp"]},#{result["timestamp"]}\n"
  sleep 3
end
