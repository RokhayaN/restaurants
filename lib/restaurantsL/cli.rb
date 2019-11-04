class Cli 
  
  def execute 
    puts "Are you a foodie like me ?"
    puts "Theses are the best ethiopian restaurants in DC. "
    puts " "
    puts "-----------------------------------------"
    puts " "
    
    Scraper.scrape_restaurants
    show_restaurants
    binding.pry
    puts " "
    puts "Select the number of a restaurant to learn more about it or type "exit"to exit"
    input = gets.strip.downcase
    while input != "exit" do 
        restaurant = Restaurant.all[input.to_i -1]
        Scraper.scrape_restaurants_elements(restaurant)
        
  end 
  
  def show_restaurants
    Restaurant.all.each.with_index(1) do |restaurant,index|
      puts "#{index}. #{restaurant.name}"
    end
  end 
end 


  