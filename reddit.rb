require 'net/http'
require 'uri'
require 'json'
require 'rubygems'

api_url = "http://www.reddit.com/r/jokes.json"
url = URI.parse(api_url)
resp = Net::HTTP.get_response(url)
data = resp.body
result = JSON.parse(data)

result['data']['children'].each do |node|
  puts node['data']['title']
  puts node['data']['selftext']
  puts '&&&'
  gets()
end

