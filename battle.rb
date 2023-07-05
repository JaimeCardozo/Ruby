#this battle is about two chareters Leon and kaiser
#import attack?
def warrior(name,hp,power1)
    #This create your warrior 
    warrior = Array.[](name,hp,power1)
    return warrior
end    
def atack(atack)
        power = rand(11)
        puts power
        if power <= 1 or power >= 9
            print "Critic Atack"
            return atack * 1.5
        else
            print "Normal Atack"
            return atack
        end
end
#this is the begin programer
def main()
    print "Number warriors: "
    num_war = gets.chomp.to_i
    warriors = Array.new(num_war)  
    i = 0
    #this while creat all warriors
    while i < num_war 
        print "Name Warrior: "
        name = gets.chomp
        print "hp: "
        hp = gets.chomp
        print "power1: "
        power1 = gets.chomp
        warrior = warrior(name, hp, power1)
        warriors.push(warrior)
        i += 1
    end
    puts warriors
    
    puts "Begin battle? yes = 1 or not = 0"
    op = gets.chomp
    while op
        puts "Begin anything player"
        random = rand(num_war)
        if random == 0 
            puts "Ataca el player1"
        end
    end
end


main()