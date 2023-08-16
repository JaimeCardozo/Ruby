#methods time: this method is a loop for the number of interations
def main ()
    world = File.new("Greet_World.txt", "a+")
    10.times do |i|
    world.write("#{i}. Hi World\n")
    end
    world.close
    File.open("Greet_World.txt").each do |line|
        puts line
    end
end
main()
