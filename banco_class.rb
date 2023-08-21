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
end
def login(user, name_user, password)
  if user.get_name == name_user && user.password == password
    return true
  else
    return false
  end
end
def main()
jaime = User.new("kike", "123", 0)
puts jaime 
puts "#{jaime.get_name}, #{jaime.get_password} , #{jaime.get_salary}"
case opt
when "1"
  "Create user"
end
when "2"
  "Login: get cash, give cash, change; name, password, 
  work: earn money: solve operation, sent money to other user"
  if login(users)
  end
when "3"
  "Delete user"
end

main()