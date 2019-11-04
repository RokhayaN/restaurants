class Scraper
  
  def self.scrape_restaurants
    
    html = open("https://www.tripadvisor.com/Restaurants-g28970-c10785-Washington_DC_District_of_Columbia.html")
    doc = Nokogiri::HTML(html)
    doc.css("div.ui_column.is-narrow.title_wrap").each do |r|
      restaurant = Restaurant.new
      restaurant.name = r.css("a.restaurants-list-ListCell__restaurantName--2aSdo").text.strip.split(". ")[1]
      restaurant.url = r.css("a").attribute("href").value
    end
  end  
 
 def self.scrape_restaurants_elements(restaurant)
   html = open ("https://www.tripadvisor.com/Restaurants-g28970-c10785-Washington_DC_District_of_Columbia.html#{restaurant.url}")
   doc = Nokogiri::HTML(html)
   biding.pry
  end
end
  
  
  
  
  