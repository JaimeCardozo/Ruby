class Pokemon
    attr_accessor :name, :breed, :age 
    def initialize(name, breed, age, voice)
      @name = name
      @breed = breed
      @age = age
      @voice = voice
    end
    def sleep()
        puts "#{@name} is sleeping he is adorable"
    end
    def eat()
        puts "#{@name} is eating he was hungry"
    end
    def speak()
        puts "#{@voice} #{@voice} #{@voice}... "
        puts "#{@name} is happy"
    end
    def to_s()
    "My pokemon is #{@name} he has #{@age} age your sound is: #{@voice}"
    end
end
pika = Pokemon.new("pika", "Pikachu", 15,"pika")
puts pika
puts pika.name 
puts pika.breed
puts pika.age
pika.name = "pichu"
puts pika.name
pika.sleep()
pika.eat()
pika.speak()
puts pika