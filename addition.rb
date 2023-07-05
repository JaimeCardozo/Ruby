#This programing return the adittion of two numbers
def adittion (number1, number2)
    result = number1 + number2 
    return result 
end

print "Write number1: "
number1 = gets.chomp.to_i
print "Write number2: "
number2 = gets.chomp.to_i

puts "the addition is: #{adittion(number1,number2)}"