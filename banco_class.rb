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

  def change_atributte(opt)
    if opt == "1"
      print "What is the new name? "
      new_name = gets.chomp
      puts "your new name is: #{new_name}"
      @name = new_name
    elsif opt == "2"
      print "What is the new password? "
      new_password = gets.chomp
      puts "your new password is: #{new_password}"
      @password = new_password
    else
      puts "This option is invalid"
    end
  end

  def get_salary()
    @salary
  end
  def give_salary(new_cash)
    @salary = new_cash + @salary
  end
  def take_salary(minus_cash)
    if minus_cash <= @salary
      @salary = @salary - minus_cash
      puts "You take #{minus_cash} of account, 
           in this moment your account have: #{@salary}"
    else
      puts "You salary is lower that #{minus_cash}"
    end 
  end
  def get_id()
    @id
  end
end

def user_menu(user)
  "Login: get cash, give cash, change; name, password, 
  work: earn money: solve operation, sent money to other user"
  loop do
    puts "User Menu (Digit one option): 
          1. Get cash
          2. take cash
          3. Change: name, password
          4. Work: Solve operation
          5. Sent money
          6. Sign out"
    opt = gets.chomp 
    case opt
    when "1"
      puts "Get cash"
      print "Digit the amount of cash: "
      cash = gets.chomp.to_i
      user.give_salary(cash)
      puts "You give #{cash} of account, in this moment your account have: #{user.get_salary}"
    when "2"
      puts "Take cash" 
      print "Digit the amount of cash: "
      cash = gets.chomp.to_i
      user.take_salary(cash)
    when "3"
      puts "Change: name, password"
      print "Which noun you wish change? 1 = name, 2 = password"
      opt = gets.chomp
      user.change_atributte(opt) 
    when "4"
      puts "Work: Solve operation"
      puts "Remenber, for every operations correct you earn 100 kekis"
      number_operations = solve_operations()
      puts "The user hit #{number_operations} of operations"
      salary = number_operations * 100
      puts "You earn #{salary} kekis"
      user.give_salary(salary)
      puts "Your salary now is: #{user.get_salary}"
    when "5"
      "sent money other users" 
      puts "your name is: #{user.get_name()}"  
    when "6"
      puts "Sign out"
      break
    else
      puts "This option is invalid"    
    end 
  end
end

def created_user()
  print "Digit user_name: "
  user_name = gets.chomp
  print "Digit user_password: "
  user_password = gets.chomp
  print "Digit your ID: "
  id = gets.chomp
  user = User.new(id, user_name, user_password, 0)
  return user
end

def login(users, id, password)
  if !users.has_key?(id)
    puts "This user not exist"
    return false
  else
    user = users[id]
    if user.get_password == password
      puts "Welcome!!! #{user.get_name}"
      return true
    else
      puts "The password is invalid"
      return false
    end
  end
end

def solve_operations 
  puts "This programam solve mathamatics problems"
  count = 0
  loop do
      num1 = Random.rand(11)
      num2 = Random.rand(11)
      rando = Random.rand(5) + 1
      print "The operation is: "
      case rando
      when 1
          print "#{num1} + #{num2} = "
          result = num1 + num2
      when 2
          print "#{num1} - #{num2} = "
          result = num1 - num2
      when 3
          print "#{num1} * #{num2} = "
          result = num1 * num2
      when 4
          if num2 == 0
              puts "operation invalid: divided by 0"
                  num2 = Random.rand(1..11)
          end
          print "#{num1} / #{num2} = "
          result = num1 / num2
      when 5
          if num2 == 0
              puts "operation invalid: divided by 0"
                  num2 = Random.rand(1..11)
          end
          print "#{num1} % #{num2} = "
          result = num1 % num2
      end
      puts "What is of result? "
      user_result = gets.chomp.to_i
      if user_result == result
          puts "You are great! This is correct"
          count += 1
      else
          puts "Sorry, keep trying"
      end
      puts "The result is #{result}"
      puts "-"*80
      puts "you Whish continue? 
      1 = Yes
      2 = Not"
      opt = gets.chomp
      if opt == "2"
        break
      end
      puts "-"*80
  end
  return count
end

def main()
users = {}
loop do
   puts "Main:
   1. Create user
   2. User_Menu
   3. Delete User
   4. Exit"
   opt = gets.chomp
   case opt
   when "1"
    puts "Create user"
    user = created_user()
    users[user.get_id] = user
    puts "The user with identification #{user.get_id} was created"
   when "2"
    "Login: get cash, give cash, change; name, password, 
    work: earn money: solve operation, sent money to other user"
    print "Digit user ID: "
    id = gets.chomp 
    puts "Digit password: "
    user_password = gets.chomp
    if login(users, id , user_password)
      user_menu(users[id])
    end
   when "3"
    "Delete user"
   when "4"
    puts "Exit"
    Exit
  else
    puts "This option no exits" 
  end
end

end

main()