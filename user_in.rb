#this programmer is responsible for creating users
#of company the managers projects
def user(username, level, salary, num_procjects)
    user = Array.[](username, level, salary, num_procjects)
    return user

end

def main()
    puts "Welcome to the project manager!"
    puts "How many people have contributed: "
    num_employee = gets.chomp.to_i
    employee = []
    i = 1 
    while i <= num_employee
        puts "Please enter the information for employee #{i}"
        puts "username: "
        username = gets.chomp
        puts "level: "
        level = gets.chomp
        puts "salary: "
        salary = gets.chomp
        puts "number of projects: "
        num_procjects = gets.chomp
        user = user(username, level, salary, num_procjects)
        print user
        puts ""
        employee.push(user)
        i += 1

    end
print employee
end
main()