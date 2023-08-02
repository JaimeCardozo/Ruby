#this programming will use hashes to create a user database.
def create_user(name_user, password, games)
    user_infor = {
        :user_name=> name_user,
        :password=> password, 
        :games => games}   
    return user_infor
end


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
            print "Digit your Password: "
            password = gets.chomp
            print "Digit your User_name: "
            user_name = gets.chomp
            print "Digit your favorite games: "
            fav_games = gets.chomp
            users[key] = create_user(user_name,password,fav_games)
            puts users
            end

        when "2"
            "Here you view some user information"
            print "Digit your email: "
            email = gets.chomp
            key = email.to_sym
            if users.has_key?(key)
                user = users[key]
                print "Digit your password: "
                password = gets.chomp
                if user[:password] == password
                    puts "The information of #{user[:user_name]} is: "
                    puts user
                end
            end
        when "3"
            "Here you update some user"
        when "4"
            "Here you delete some user"
        when "5"
            "Here you delete all user"
        else
            "the opion is not valid"
    end
end