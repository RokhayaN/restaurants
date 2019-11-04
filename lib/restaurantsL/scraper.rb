class Scraper
  
  def self.scrape_restaurants
    
    html = open("https://guide.michelin.com/us/en/washington/washington-dc/article/dining-out/ethiopian-food-restaurants-washington-dc#")
    doc = Nokogiri::HTML(html)
    doc.css(".detail-page__content h2 a").each do |r|
      restaurant = Restaurant.new
      binding.pry
      restaurant.name = r.css(".detail-page__content h2 a").text.strip.split(". ")[1]
      restaurant.url = r.css("a").value.attribute("href")
      #binding.pry
    end
  end  
 
 def self.scrape_restaurants_elements(restaurant)
   html = open (")
   doc = Nokogiri::HTML(html)
   
  end
end
  
  
  
  
  