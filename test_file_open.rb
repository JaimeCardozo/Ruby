#this method open, open the file 
"""File.open(testFile.txt) do |file|
    while line = file.gets
        puts line
    end
end"""
file  = File.open("testFile.txt")
line1 = file.gets
puts line1
line2 = file.read
puts line2
line2 = file.gets
puts line2