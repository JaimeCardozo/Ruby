class User
  def initialize(id, name, password, salary)
    @id = id
    @name = name
    @password = password
    @salary = salary 
  end
  
  def get_name()
    @name 
  end

  def get_password()
    @password
  end

  def get_salary()
    @salary
  end
  def get_id()
    @id
  end
  def user_menu(user)
    "Login: get cash, give cash, change; name, password, 
    work: earn money: solve operation, sent money to other user"
    puts "User Menu (Digit one option): 
          1. Get cash
          2. Give cash
          3. Change: name, password
          4. Work: Solve operation
          5. Sent money"
    opt = gets.chomp 
    case opt
    when "1"
      "get cash"
    when "2"
      "give cash" 
    when "3"
      "change: name, password"
    when "4"
      "work: Solve operation"
    when "5"
      "sent money other users"   
  end

end

def login(users, name, password)
  users.each do |user|
    if user.get_name == name && user.password == password
      return true
    else
      print "The user or password is invalid"
      return false
    end
  end
  
end

def main()
users = {}
jaime = User.new("kike", "123", 0)
puts jaime 
puts "#{jaime.get_name}, #{jaime.get_password} , #{jaime.get_salary}"
puts "Main:
      1. Create user
      2. User_Menu
      3. Delete User"
opt = gets.chomp
case opt
when "1"
  "Create user"
when "2"
  "Login: get cash, give cash, change; name, password, 
  work: earn money: solve operation, sent money to other user"
  print "Digit user name: "
  user_name = gets.chomp 
  puts "Digit password: "
  user_password = gets.chomp
  if login(users,user_name, user_password)
    user_menu(user)
  end
when "3"
  "Delete user"
else
  puts "This option no exits" 
end
end
main()