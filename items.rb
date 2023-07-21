#this script is for simuated bag of items
def save_item(item, bag)
    bag = bag.unshift(item)
    return bag

end

def main()
    puts "In this moment save one item"
    print "number of items for save: "
    number_items = gets.chomp.to_i
    i = 1
    bag = []
    while i <= number_items
    print "Whats is the name of item? "
    name_item = gets.chomp
    print "Write a description about this item: "
    description_item = gets.chomp
    item = [name_item, description_item]
    bag = save_item(item, bag)
    i += 1
    end
   puts "the last item was: #{bag[0]}"
   print "All items are: #{bag}}"
end

main()