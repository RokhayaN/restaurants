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
    #loop that asks user what to do and does that until "exit"
  end 
  
  def show_restaurants
    Restaurant.all.each.with_index(1) do |restaurant,index|
      puts "#{index}.#{restaurant.name}"
    end
  end 
end 


  