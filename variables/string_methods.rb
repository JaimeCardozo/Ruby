#pruebas para string 
#msg  = "kike is best than"
#puts "#{msg} Link" (interpolación)
print("write me ")
#get methods is for take input for user
#chomp methods it used for erased the new line created for methods get
msg = gets.chomp 
#puts methods is for output in terminal the container of variables
#size methos give the size of string 
puts msg.size
#upcase methos capitalize change lower case string for 
puts msg.upcase
#downcase methos lower case change capitalize string for
puts msg.downcase
#swapcase methods invert capitalize with lower case
puts msg.swapcase
#changes firt string with second string 
puts msg.gsub("hola", "bye")
#strip methods erased begin empty string to end empty string
puts msg.strip.size 
#include? methods aswer if some string there are here, return a bolean
puts msg.include? "hola"
#empty? methods aswer if the string is empty
puts msg.empty?
#concatenate is posible with + or *
msg2 = msg + " " + msg
puts (msg2)
msg3 = msg*3
puts (msg3)
#"!" is used for change the value of variable with methods 
msg3.gsub!("hola", "bye")
puts msg3