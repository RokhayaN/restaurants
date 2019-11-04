class Cli 
  
def execute 
  puts "Are you a foodie like me ?"
  puts "Theses is a list of the best ethiopian restaurants in DC. "
  puts " "
  puts "-----------------------------------------"
  puts " "
  Sraper.scrape_movies
  
  #loop that asks user what to do and does that until "exit"
  end 
  
 def show_restaurants
   Restaurant.all.each.with_index(1) do |restaurant,index|
  puts "#{restaurant}"
end 
end 
  