require 'nokogiri'
require 'open-uri'
require 'pry'

def execute 
  puts "Are you a foodie like me ?"
  puts "Theses is a list of the best ethiopian restaurants in DC. "
  puts " "
  puts "-----------------------------------------"
  puts " "
  
  html = open("https://www.tripadvisor.com/Restaurants-g28970-c10785-Washington_DC_District_of_Columbia.html")
  doc = Nokogiri::HTML(html)
  doc.css("div.ui_column.is-narrow.title_wrap")
  binding.pry
end 
  