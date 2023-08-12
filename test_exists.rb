#The method exists verified if the file exists
value = File.exists?("testFile.txt")
puts value
if File.exists?("test.txt")
    file_test = File.open("test.txt","a+")
    puts "entre0"
else
    file_test = File.new("text.txt","w+")
    puts "entre"
end
n = 0 
while n < 2
    file_test.write("Hi world!\n")
    n += 1
end
file_test.close