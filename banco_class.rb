class User
  def initialize(name, password, salary)
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
end
def main()
jaime = User.new("kike", "123", 0)
puts jaime 
puts "#{jaime.get_name}, #{jaime.get_password} , #{jaime.get_salary}"

end

main()