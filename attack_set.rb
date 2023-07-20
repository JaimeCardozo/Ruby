def new_attack(set, attack)
    set << attack
    return set
end

def attack(name_attack, damage, critical, spell_power)
    name = "Name: #{name_attack}"
    damage = "Damage: #{damage}"
    critical = "Critical: #{critical}"
    spell_power = "SP: #{spell_power}"
    attack = [name, damage, critical, spell_power]
    return attack

end

def main()
    sw = true 
    set = []
    while sw
    puts "In this moment you add new attack"
    puts "Name the new attack: "
    name_attack = gets.chomp
    puts "Damage: "
    damage = gets.chomp
    puts "critical: "
    critical = gets.chomp
    puts "Spell power: "
    spell_power = gets.chomp
    attack = attack(name_attack, damage, critical, spell_power)
    puts "your new attack: #{attack}"
    set = new_attack(set,attack)
    print "Your want created other atack? Y = 1, N = 0 "
    op = gets.chomp
    if op!= "1"
        sw = false
        puts "All your atack: "
        print set
    
    end
    
    end
end

main()