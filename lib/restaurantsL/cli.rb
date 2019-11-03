require 'nokogiri'
require 'open-uri'
require 'pry'

class Cli 
  
end

def execute 
  puts "Are you a foodie like me ?"
  puts "Theses is a list of the best ethiopian restaurants in DC. "
  puts " "
  puts "-----------------------------------------"
  puts " "
  
  html = open("https://www.tripadvisor.com/Restaurants-g28970-c10785-Washington_DC_District_of_Columbia.html")
  restaurants = [ ]
  doc = Nokogiri::HTML(html)
  doc.css("div.ui_column.is-narrow.title_wrap").each do |r|
    restaurantName = r.css("a.restaurants-list-ListCell__restaurantName--2aSdo").text.strip
    restaurants << restaurantName
  end 
  restaurants.each.with_index(1) do |restaurantName,index|
  puts "#{restaurantName}"
  #binding.pry
 end 
end 
  