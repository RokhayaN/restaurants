class Cli 
  
  def execute 
    puts "Are you a foodie like me ?"
    puts "Theses is a list of the best ethiopian restaurants in DC. "
    puts " "
    puts "-----------------------------------------"
    puts " "
    Scraper.scrape_restaurants
    binding.pry
    #loop that asks user what to do and does that until "exit"
  
    #list_layout
    #show_restaurants
  
  end 
  
  
  #def lay_out
  #end 
  
  #def show_restaurants
   # Restaurant.all.each.with_index(1) do |restaurant,index|
      #puts "#{index},#{restaurant.name}"
    #end
  #end 
end 


  