class Restaurant
  attr_accessor :name ,:url ,:description, :phone_number, :address
  @@all = []
  
  def initialize 
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
end 