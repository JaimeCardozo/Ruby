#this programming will use hashes to create a user database.
def create_user()
    print "Digit your Password: "
    password = gets.chomp
    print "Digit your User_name: "
    user_name = gets.chomp
    print "Digit your favorite games: "
    fav_games = gets.chomp
    games = Array[fav_games] 
    user_infor = {
        :user_name=> user_name,
        :password=> password, 
        :games => games}   
    return user_infor
end
def login(users, key, password)
    if users.has_key?(key)
        user = users[key]
        if user[:password] == password
            return true
        else
            puts "This Password is not correct"
        end

    else
        puts "This user not exist"
    end

end
def update_user(user, option)
    case Option
       when "1"
        "Change user name"
       when "2"
        "Change password"
       when "3"
        "Change favorite game"
    end
end
def main()
    users = {}
    while true
        puts "The menu"
        puts "What option want: 1 = Created user, 2 = View user information, 3 = Update some user, 4 = Delete user"
        option = gets.chomp
          case option
          when "1"
                  puts "You will create a new user"
                  print "Digit your email: "
                  email = gets.chomp
                  key = email.to_sym
                  if users.has_key?(key)
                  puts "This email exist, please write other email" 
                  else
                  users[key] = create_user()
                  puts "the user was created, this is: "
                  puts users
                  end
      
          when "2"
                  "Here you view some user information"
                  print "Digit your email: "
                  email = gets.chomp
                  key = email.to_sym
                  print "Digit your password: "
                  password = gets.chomp
                  if login(users, key, password)
                      print "What you wish view: 1. Information general, 2. update information_user, 
                      3. Add new game, 4. Erased user, 5.Login_Exit"
                      opt = gets.chomp
                      case opt
                       when "1"
                        puts users[key]
                       when "2"
                        puts "You only change: user_name, password, favorite_game "
                        puts "Digit option: 1 = user_name, 2 = password, 3 = favorite_game"
                        opt2 = gets.chomp
                        update_user(users[key],opt2)
                       when "3"
                        "Add new game"
                       when "4"
                        "Erased user"
                       when "5"
                        "Login_Exit"
                      end
                  else
                      puts "Login Again"
                  end
      
          when "3"
                  "Create adminitrater"
                  
          when "4"
                  "Adminitrater, Here you update some user: "
                  "Here you delete some user"
                  "Here you delete all user"
          else
                 puts "the opion is not valid"
          end
      end

end


main()