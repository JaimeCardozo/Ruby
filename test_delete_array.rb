#this programan is about delete in array
#for delete one element for index you use delete_at 
#for example:
test_array = ["hi!", 2, {casa:1}]
print test_array
puts
test_array.delete_at(2)
print test_array
puts
#for delete one element for exactly elemen use only delete
test_array.delete("hi!")
print test_array