def solve_operations 
    puts "This programam solve mathamatics problems"
    loop do
        num1 = Random.rand(11)
        num2 = Random.rand(11)
        rando = Random.rand(5) + 1
        print "The operation is: "
        case rando
        when 1
            print "#{num1} + #{num2} = "
            result = num1 + num2
        when 2
            print "#{num1} - #{num2} = "
            result = num1 - num2
        when 3
            print "#{num1} * #{num2} = "
            result = num1 * num2
        when 4
            if num2 == 0
                puts "operation invalid: divided by 0"
                    num2 = Random.rand(1..11)
            end
            print "#{num1} / #{num2} = "
            result = num1 / num2
        when 5
            if num2 == 0
                puts "operation invalid: divided by 0"
                    num2 = Random.rand(1..11)
            end
            print "#{num1} % #{num2} = "
            result = num1 % num2
        end
        puts "What is of result? "
        user_result = gets.chomp.to_i
        if user_result == result
            puts "You are great! This is correct"
        else
            puts "Sorry, keep trying"
        end
        puts "The result is #{result}"
        puts "-"*80
    end
    
end 

solve_operations()