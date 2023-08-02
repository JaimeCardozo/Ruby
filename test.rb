#test conditional
"""number = 1
if true && false;
    print hi
else
    print house
end """
#test Cycle
"""number = 0 
while number < 10  
    print Hola
    number =number + 1
end """
#test random number    
#print rand(1)
#test list (array) in ruby
"""i=0
while i < 5
    puts 1
    i+=1
break
end """
#test random color
"""list = Array[amarillo,rojo]
puts list[0]
puts list[1]
print list[rand(2)]"
""
#test conditional ||
"""number = 0.5
if number == 0 || number == 1
   print yes it good
else
   print Ohhh not, holy shit!
end """
#test method chomp
"""print write your word:  
word = gets
word2 = word.chomp
word = word +  to next 
word2 = word2 +  to next 
puts word
puts word2  """
#test about array methods
"""Example_Array = [Yellow, red, green]
puts Example_Array.fetch(3,This position not exist)  
Example_Array << pink
print Example_Array """
#test string
"""house = kike's house
word = the house: {house}
print word"""
#test methods unshift
"""bag = []
bag = bag.unshift(Casa)
print bag"""
#test for i+=1
"""i = 2
i += 2
print i """
"""#test for Range and cycle
while input = gets.chomp 
    puts input +  triggered if input =~ /start/ .. input =~ /end/ 
   
end """
#test methods length Array
"""Array = [house, cart, keys, ball]
puts Array.length()
print Array[2]"""
#test method delet Array
"""Array = [house, cart, key]
save = Array.delete(cart)
save = Array.delete(ke)
puts save
print Array """
#test method delet string
"""word = My house is beautiful
save = word.delete(My)
puts save 
puts word"""
#test method slice 
"""Games = [Pokemon Stadium, Pokemon Rojo Fuego, Bomberman 64]
firts_Game = Games.slice(1)
puts firts_Game
zero_Game = Games.slice(0)
puts zero_Game
games = Games.slice(0, 2)                      
print games"""
"""symbol = :Symbols
print symbol
symbol = troll
puts symbol
symbol = 2
puts symbol """
#this test is: Hash - Symbols
casa = "user"
casa2 = casa.to_sym
hash = {casa => "casa"}
hash2 = {casa2 => "casa2"}
puts hash[casa] 
puts hash
puts hash2
puts hash2[casa2]
hash[:"user"]!= "casa" 
hash2[:casa3] = "casita"
puts hash2 
puts hash.size
puts hash.has_key?(casa)
puts hash2.has_key?(casa2)
