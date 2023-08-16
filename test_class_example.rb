class Gamer 
  def initialize(name, game_fav, charater)
    @name = name 
    @game_fav = game_fav
    @charater = charater
  end 
  def get_name
    @name
  end
  def play()
    puts "In this moment your play!!!"
  end
end
game1 = Gamer.new("kike", "Zelda", "Link")
puts game1
puts game1.get_name
puts game1.play()