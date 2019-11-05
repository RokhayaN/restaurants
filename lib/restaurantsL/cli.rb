class Cli 
  
  def execute 
    puts "Are you a foodie like me ?"
    puts "Check this out!These are the Michelin-recommended Ethiopian Restaurants in DC - and the number you get will depend on how many Michelin is currently recommending! "
    puts " "
    puts "-----------------------------------------"
    puts " "
    
    Scraper.scrape_restaurants
    show_restaurants
    puts " "
    puts "Select the number of a restaurant to learn more about it or type 'exit'to exit"
    input = gets.strip.downcase
    while input != "exit" do 
      
        restaurant = Restaurant.all[input.to_i - 1]
        Scraper.scrape_restaurants_elements(restaurant) if !restaurant.description
        print_restaurant(restaurant)
        puts " "
        puts "Would you like more options to make the best decision ? "
        puts "In that case ,select another number to see more details or type 'exit'to exit"
        input = gets.strip.downcase
    end 
    puts "See you ,next time !"
  end 
  def print_restaurant(restaurant)
    puts "-----------------------------------------"
    puts "#{restaurant.name}"
    puts "#{restaurant.description}"
    puts "#{restaurant.url}"
    
    puts "-----------------------------------------"
  end 
  def show_restaurants
    Restaurant.all.each.with_index(1) do |restaurant,index|
      puts "#{index}. #{restaurant.name}"
    end
  end 
end 


  