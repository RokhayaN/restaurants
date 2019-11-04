class Scraper
  
  def self.scrape_restaurants
    
    html = open("https://guide.michelin.com/us/en/washington/washington-dc/article/dining-out/ethiopian-food-restaurants-washington-dc#")
    doc = Nokogiri::HTML(html)
    binding.pry
    doc.css(".detail-page__content h2 a").each do |r|
      restaurant = Restaurant.new
      restaurant.name = r.css(".detail-page__content h2 a").text.strip.split(". ")[1]
      restaurant.url = r.css("a").attribute("href").value
    end
  end  
 
 def self.scrape_restaurants_elements(restaurant)
   html = open ("https://www.tripadvisor.com/Restaurants-g28970-c10785-Washington_DC_District_of_Columbia.html#{restaurant.url}")
   doc = Nokogiri::HTML(html)
   binding.pry
  end
end
  
  
  
  
  