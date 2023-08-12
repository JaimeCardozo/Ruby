#method open for file
#the method open allowd create instance of txt for a object
file =  File.open("testFile.txt", "r+")
#the method read have the date of txt
file_date = file.read
puts file_date
