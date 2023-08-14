def get_number()
    print "Digit your number: "
    number = gets.chomp.to_i
    return number 
end
def give_number()

end
def main 
    puts "Welcome a your calculator"
    if !File.exists?("operations.txt")
       operations = File.new("operations.txt","w+")
    end
    loop do
        operations = File.open("operations.txt","a+")
        puts "the operation valid are: 
        1 = Adittion
        2 = Subtraction
        3 = Multiplication
        4 = Division
        5 = View operations 
        6 = Exit
        7 = Delete_Operations"
        opt = gets.chomp.to_i
        if opt == "6"
            break
        end
        case opt
        when 1
            number1 = get_number()
            number2 = get_number()
            result = number1 + number2
            line = "#{number1} + #{number2} = #{result}\n" 
        when 2
            number1 = get_number()
            number2 = get_number()
            result = number1 - number2
            line = "#{number1} - #{number2} = #{result}\n"
        when 3
            number1 = get_number()
            number2 = get_number()
            result = number1 * number2
            line = "#{number1} * #{number2} = #{result}\n"
        when 4
            number1 = get_number()
            number2 = get_number()
            result = number1 / number2
            line = "#{number1} / #{number2} = #{result}\n"
        when 5
            puts "read the operations"
            File.open("operations.txt").each do |line|
                puts line
            end
        when 6
            break
        when 7
           puts "Delete operations"
           operations.close
           operations = File.new("operations.txt","w+")
        else 
            puts "Option invalid"
        end
        if opt == 1 or opt == 2 or opt == 3 or opt == 4
            puts " the result is: #{result}"
            puts line
            operations.write(line)
            operations.close
        end
        
    end
    operations.close
end
main()
