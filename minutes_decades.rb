#this programmer said the number of minutes in a decade
print "Writed of number of decades your wish calculed: "
decade = gets.chomp.to_i
minutes = decade * 10 * 365 * 24 * 60 
puts "The number of minutes have #{decade} decade is: #{minutes}"