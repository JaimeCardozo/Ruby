#methods keys: said keys of hash 
edades = {maria: 12, jose: 13, jaime: 18}
print edades.keys
puts
#methods store: add some element to hash
edades.store(:joselito, 20)
print edades
puts
#methods values: return of values of hash
print edades.values
puts
#methods hash_value?: return true o false if exist a value in the hash
puts edades.has_value?(20)
puts edades.has_value?(21) 
#methods delete: this method is for delete element of hash
key = edades.delete(:maria)
puts key
puts edades
edades = {}
puts edades