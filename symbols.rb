#a symbol is to type of date more simple, the idea is two symbols save the same date
#then your id is the same 
color = :rojo
color2 = :rojo
puts color.object_id
puts color2.object_id 
#note that the object identification color is the same color2
puts color.class