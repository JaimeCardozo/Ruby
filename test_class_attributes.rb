class Pokemon
    attr_reader :name, :breed, :age
    attr_writer :name, :breed, :age
    def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    end
end
pika = Pokemon.new("Pika", "Pikachu", "12")
puts pika.name
pika.name = "piko"
puts pika.name