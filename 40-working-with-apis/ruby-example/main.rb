require "typhoeus"
require "json"

headers = {
  Authorization: "Token token=\"#{ENV['LCBO_KEY']}\""
}

res = Typhoeus.get("https://lcboapi.com/products", followlocation: true, headers: headers)
puts res.response_code
body = JSON.parse(res.body)

body["result"].each do |product|
  puts product["name"]
end
