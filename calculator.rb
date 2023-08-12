def main 
    puts "Welcome a your calculator"
    if !File.exists?("operations.txt")
       operations = File.new("operations.txt","w+")
    else
       operations = File.open("operations.txt")
    end
    
    loop do
        puts "the operation valid are: 
        1 = Adittion
        2 = Subtraction
        3 = Multiplication
        4 = Division
        5 = Exit"
        opt = gets.chomp
        if opt == "5"
            break
        end
        puts "Digit the first number? "
        number1 = gets.chomp
        puts "Digit the second number? "
        number2 = gets.chomp
        case opt
        when "1"
            result = number1 + number2 
        when "2"
            result = number1 - number2
        when "3"
            result = number1 * number2
        when "4"
            result = number1 / number2
        else 
            puts "Option invalid"
        end
        puts result

    end
    
end
main()
