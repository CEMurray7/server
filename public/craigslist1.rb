require 'httparty'
require 'nokogiri'
url = "https://miami.craigslist.org/search/sof"
response = HTTParty.get url
# puts response.body #returns HTML code from craigslist
# p response.headers #look for content type
html = response.body
dom = Nokogiri::HTML(html)
# p dom.css("html").size
# p dom.css("*").size
links = dom.css("a.hdrlnk")
p links.first.text
p links.first.to_str
links.each do |link|
  puts link.to_str
end #each
