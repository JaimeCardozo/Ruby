#methods each with online key or value
id = {101=> "Jose", 102=> "Paula", 103=> "Camilo", 104=> "Pablo"}
puts "the keys are: "
id.each_key do |key|
      puts key
end
puts "the value are:"
id.each_value do |value|
    puts value
end