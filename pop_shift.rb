#the methods pop and shift return the final value or firts value in array and remoded this 
#this programer simulated a shopping cart
print "Welcome your shopping of Console"
def add_cart(election_console, cart)
    case election_console
    when "1"
        cart = cart.unshift("PS5")
    when "2"
        cart = cart.unshift("XS")
    when "3"
        cart = cart.unshift("Swicht")   
    when "4"
        cart = cart.unshift("PC_GAMER")
    else 
        print "Option not allowed"
    end 

end
sw = true
cart = []
while sw
    puts "What product your wish buy? 1 = PS5 , 2 = XS, 3 = Swicht, 4 = PC_GAMER "
    election_console = gets.chomp
    add_cart()
    #se debe crear un menu para poder agregar productos de el carrito y sacar productos en este while
end