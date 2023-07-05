print "What is your age? "
age = gets.chomp.to_i

if age >= 18
    puts "You are old"
else
    puts "You are young"
end