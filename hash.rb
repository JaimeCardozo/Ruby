#this programming will use hashes to create a user database.
def user(user, password, name_user, fav_games)
    user_info = [user, password, name_user, fav_games]
    return user_info
end
user_1 = user("kike","123","jaime","Zelda")
my_first_example = {"kike"=> user_1}
puts my_first_example
info = my_first_example["kike"]
puts "The game favorite of #{info.slice(0)} is: #{info.slice(3)}"
"The menu"
case "option"
    when "1"
        "Here you crated user"
    when "2"
        "Here you view some user information"
    when "3"
        "Here you update some user"
    when "4"
        "Here you delete some user"
    when "5"
        "Here you delete all user"
    else
        "the opion is not valid"
end
