#the methods pop and shift return the final value or firts value in array and remoded this 
#this programer simulated a shopping cart

def add_cart(election_console, cart)
    case election_console
    when "1"
        cart = cart.unshift("PS5")
    when "2"
        cart = cart.unshift("XS")
    when "3"
        cart = cart.unshift("SWICHT")   
    when "4"
        cart = cart.unshift("PC_GAMER")
    else 
        print "Option not allowed"
    end 
    return cart 
end

def quit_element(election_console, cart)
    case election_console
    when "1"
        puts "Erased the element #{cart.delete("PS5")}"
        cart.compact!
    when "2"
        puts "Erased the element #{cart.delete("XS")}"
        cart.compact!
    when "3"
        puts "Erased the element #{cart.delete("SWICHT")}"
        cart.compact!
    when "4"
        puts "Erased the element #{cart.delete("PC_GAMER")}"
        cart.compact!
    else
        puts "this option is not valid"
    end
    return cart
end
def view_Cart(cart)
    i = 0
    size = cart.length()
    puts "Yours product are: "
    while i < size
        puts "#{i+1}. #{cart[i]} "
        i+=1        
    end
end
def main()
    puts "Welcome your shopping of Console"
    sw = true
    cart = []
    while sw
    print "What is the option your wish: 1 = Buy, 2 = Quit element of cart, 3 = View Cart, 4 = Close Cart "
        election_console = gets.chomp
        case election_console
        when "1"
            print "What product your wish buy? 1 = PS5 , 2 = XS, 3 = Swicht, 4 = PC_GAMER "
            election_console = gets.chomp
            cart =add_cart(election_console, cart)
        when "2"
            print "What product your wish quit of cart? 1 = PS5 , 2 = XS, 3 = Swicht, 4 = PC_GAMER "
            election_console = gets.chomp
            cart = quit_element(election_console, cart)
        when "3"
            view_Cart(cart)
        when "4"
            sw = false
        else
            "This value is not valid"
        end
    end 

end
main()