#&& Operador logico O
#|| Operador logico Y
#Se creara un programa que pregunte dos colores: red, yellow, blue. Dependiendo de la escogencia 
#se creara un tercer color apartir de estos 
#This methods return the new color about color1 and color2
def newcolor(color1, color2)
    if color1 == color2 
        print "The new color is: #{color1}"
    elsif color1 == "Red" && color2 == "Yellow"
         return "Orange"
    elsif color1 == "Red" && color2 == "Blue"
         return "Purple"
    elsif color1 == "Yellow" && color2 == "Blue"
        return "Green"
    end
    return "no color"
end

#This methods give the color about option
def color()
    print "Digit color: 1=Red, 2=Yellow, 3=Blue "
    option = gets.chomp
    puts option
    if option == "1"
        puts "Enter"
        option = "Red"
    elsif option ==  "2"
        option = "Yellow"
    elsif option == "3"
        option = "Blue"
    end
    return option
end 
switch = "1"
while switch == "1"
    print "Want to play the new color? 1 = yes, 2 = not "
    switch = gets.chomp
    if switch == "1"
        color1 = color()
        puts "Color1 is: #{color1}" 
        color2 = color()
        puts "Color2 is: #{color2}"
        
        color = newcolor(color1, color2)
        puts "The new color is: #{color}"
    else
        break
    end
end
print "Thanks!" 
