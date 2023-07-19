#This proggramer take one note y uotput your result
def grader(note)
    if note> 0 && note <= 1
        print "you are suck"
    elsif note>1 && note <7
        print "You are normal"
    elsif note>= 8 && note < 10
        print "You're cool"
    elsif note == 10 
        print "Excellent"
    else
        print "This note is invalid"    
    end
end

def main()
    print "Write your note: "
    note = gets.chomp.to_i  
    grader(note)
end
main()