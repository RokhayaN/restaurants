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
    puts "Select the number of a restaurant to learn more about it type 'list' to visualize the list again or type 'exit'to exit"
    input = gets.strip.downcase
    while input != "exit" do 
        
      if input.to_i > 0 && input.to_i <= Restaurant.all.count 
         restaurant = Restaurant.all[input.to_i - 1]
        Scraper.scrape_restaurants_elements(restaurant) if !restaurant.description
        print_restaurant(restaurant)
        
      elsif input == "list"
        show_restaurants
      else
        puts "I'm not sure I get this!"
      end
        puts " "
        puts "Would you like more options to make the best decision ? "
        puts "In that case ,select another number to see more details or type 'list' to visualize the list again or type 'exit'to exit"
        
        input = gets.strip.downcase
    end 
    puts "Bye,see you next time !"
  end 
  def print_restaurant(restaurant)
    puts "-----------------------------------------"
    puts" "
    puts "#{restaurant.name}"
    puts " "
    puts "#{restaurant.description}"
    puts " "
    puts "#{restaurant.url}"
    puts " "
    puts "-----------------------------------------"
  end 
  def show_restaurants
    Restaurant.all.each.with_index(1) do |restaurant,index|
      puts "#{index}. #{restaurant.name}"
    end
  end 
end 


  