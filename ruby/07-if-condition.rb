puts "Enter A"
a = gets.chomp
b = a.to_i
#puts a.instance_of? Fixnum

if b > 10
    puts 'A is greater than 10'
elsif b < 10
    puts 'A is less then 10'
else
    puts 'A is equal to 10'
end
