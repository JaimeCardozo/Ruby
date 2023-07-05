#Atack Fire Emblem
#this programing is a function about range for one atack 
print "Do you want to attack? 1 = yes, 2 = Not "
op = gets.chomp
if op == "1"
    power = rand(11)
    puts power
    if power <= 1 or power >= 9
        print "Critic Atack"
    else
        print "Normal Atack"
    end
end
