class Scraper
  
  def self.scrape_restaurants
    
    html = open("https://guide.michelin.com/us/en/washington/washington-dc/article/dining-out/ethiopian-food-restaurants-washington-dc#")
    doc = Nokogiri::HTML(html)
    doc.css(".detail-page__content h2 a").each do |r|
      restaurant = Restaurant.new
      restaurant.name = r.text.strip
      restaurant.url = r.attribute("href").value
      
    end
  end  
 
 def self.scrape_restaurants_elements(restaurant)
   html = open ("https://guide.michelin.com/us/en/washington/washington-dc/article/dining-out/ethiopian-food-restaurants-washington-dc#")
   doc = Nokogiri::HTML(html)
   restaurant.address = doc.css('.restaurant-details__heading--list li')[2].text 
   restaurant.phone_number = doc.css(".collapse__block a").attribute("href").value 
   restaurant.description = doc.css("p").first.text.strip 
 end
end
  
  
  
  
  