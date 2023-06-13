print "Write number1: "
number1 = gets.to_i
print "Write number2: "
number2 = gets.to_i
print "What operation to want? 1 = Sum, 2 = minus, 3 = by, 4 = divide: "
operation = gets.to_i
binary = true
if operation == 1
    result = number1 + number2
elsif operation == 2
    result = number1 - number2
elsif operation == 3
    result = number1 * number2
elsif operation == 4    
    result = number1 / number2
else
    print "Enter is not valid"
    binary = false
end

if binary;
    print "Your result is: #{result}"
end