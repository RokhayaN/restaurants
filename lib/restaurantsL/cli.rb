class Cli 
  
def execute 
  puts "Are you a foodie like me ?"
  puts "Theses is a list of the best ethiopian restaurants in DC. "
  puts " "
  puts "-----------------------------------------"
  puts " "
  
  end 
  
 def show_restaurants
   Restaurant.all.each.with_index(1) do |restaurant,index|
  puts "#{restaurant}"
end 
end 
  