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
            puts "Welcome! #{user[:user_name]}"
            return true
        else
            puts "This Password is not correct"
        end

    else
        puts "This user not exist"
    end

end
def update_user(user, option)
    case option
       when "1"
        "Change user name"
        print "Digit the new user_name: "
        user_name = gets.chomp
        user[:user_name] = user_name
        puts "The new name is: #{user_name}"
       when "2"
        "Change password"
        print "Digit the new password: "
        password = gets.chomp
        user[:password] = password
        puts "The new password is: #{password}"
       when "3"
        "Change favorite game"
        print "Digit your new favorite game: "
        fav_games = gets.chomp
        games = user[:games]
        games = games.push(games[0])
        games[0] = fav_games
        puts "The new favorite game is: #{fav_games}"
       else
        print "This option not exist"
    end
    return user
end
def create_administrater()
    print "Digit your Password: "
    password = gets.chomp
    print "Digit your User_name: "
    user_name = gets.chomp
    print "Digit your favorite_girl_xd: "
    favorite_girl = gets.chomp 
    administrater_infor = {
        :user_name=> user_name,
        :password=> password, 
        :girl => favorite_girl}   
    return administrater_infor
end
def main()
    users = {}
    administraters = {}
    sw = true
    while sw
        puts "The menu"
        puts "What option you want: 
        1 = Created user 
        2 = View user information
        3 = Create Adminitrate
        4 = Power Gem
        5= Exit "
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
                      login = true 
                      while login
                      puts "What you wish view: 
                      1. Information general
                      2. update information_user 
                      3. Add new game 
                      4. Erased user 
                      5.Login_Exit "
                      opt = gets.chomp
                      case opt
                       when "1"
                        "View user"
                        puts users[key]
                       when "2"
                        "User_Update"
                        puts "You only change: user_name, password, favorite_game "
                        puts "Digit option: 1 = user_name, 2 = password, 3 = favorite_game"
                        opt2 = gets.chomp
                        users[key] = update_user(users[key],opt2)
                       when "3"
                        "Add new game"
                        print "Digit the name of new games: "
                        game = gets.chomp
                        user = users[key]
                        user[:games]= user[:games].push(game)
                       when "4"
                        "Erased user"
                       when "5"
                        "Login_Exit"
                        login = false 
                        puts "The login was close"
                      end
                    end
                  else
                      puts "Login Again"
                  end
      
          when "3"
                  "Create adminitrater"
                  puts "In this moment you create a new administrater"
                  print "Please, Write the administrater_key: "
                  administrater_key = gets.chomp
                  key = administrater_key.to_sym
                  if administraters.has_key?(key)
                  puts "This administrater exist, please write other administrater" 
                  else
                  administraters[key] = create_administrater()
                  puts "the administrater was created, this is: "
                  puts administraters[key]
                  end
          when "4"
            "Power_Gem"
                  "Adminitrater, Here you update some user: "
                  "Here you delete some user"
                  "Here you delete all user"
                print "Writed administrater_key: "
                key = gets.chomp.to_sym
                print "Writed password: "
                password = gets.chomp
                if login(administraters, key, password)
                    sw0 = true
                while sw0
                  puts "What do you wish? 1 = View information user, 2 = erased all users, 3 = mod_happy"
                  opt = gets.chomp
                  case opt
                  when "1"
                        print " Digit the email of user, you wish review: "
                        key = gets.chomp.to_sym
                        if users.has_key?(key)
                            sw2 = true
                            while sw2 
                            print "What wish with this user: 
                            1 = View user, 
                            2 = erased user, 
                            3 = update user, 
                            4 = User_Exit"
                            opt2 = gets.chomp
                            case opt2
                                when "1"
                                  puts "The user is: "
                                  print users[key]
                                when "2"
                                    "erased user"
                                when "3"
                                   puts "You only change: user_name, password, favorite_game "
                                   puts "Digit option: 1 = user_name, 2 = password, 3 = favorite_game"
                                   opt2 = gets.chomp
                                   users[key] = update_user(users[key],opt2)
                                when "4"
                                    sw2 = false
                                else
                                    print "This option is not valid"
                            end
                        end
                            
                        else
                            puts "This email not exist"
                        end
                    when "2"
                        "erased all users"
                    when "3"
                        sw0 = false
                    else
                        puts "this option is not valid"

                  end
                end

                else
                    puts "Error in login, again_login"
                end
          when "5"
            sw = false
          else
                 puts "the opion is not valid"
          end
      end

end


main()