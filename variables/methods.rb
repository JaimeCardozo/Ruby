def greet (name, house) 
    puts "Hi #{name}, welcome to the #{house} house"

end

print "Enter name: "
name = gets.chomp
print "Enter house: "
house = gets.chomp
greet(name,house) 