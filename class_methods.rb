#Ruby can allowd create methods in the class but the class
#bisedes other methods of class objets
class Cat
  attr_accessor :name, :color
  def initialize(name, color, age) 
      @name = name
      @color = color
      @age = age
  end
  def miau()
    puts "miau miau miau"
  end
  def to_s
    "My #{@name} is very beatiful he is #{@color} and he has #{@age} age"
  end
end  
michu = Cat.new("michu", "white", 12)
puts michu
#the method methods can allowd view all methods of objet
puts michu.methods
#the method respond can allowd to check a method
puts michu.respond_to?("miau")
#the method object.id display the identification of object
puts michu.object_id
