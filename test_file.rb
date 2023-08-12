#test File: the method File allowed write code in ruby
file = File.new("testFile.txt", "w+")
file.syswrite("The test file39\n")
file.syswrite("Other line")
file.close