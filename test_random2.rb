def main ()
  count = 0
  loop do
    operation = Random.rand(100)
    puts operation
    if operation == 77
        count += 1
        puts "Aparece #{count}"
    end
    if count == 2
        break
    end
  end
end
main()