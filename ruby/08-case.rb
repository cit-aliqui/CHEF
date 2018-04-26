puts "Enter Operator [add|sub|mul]"
a = gets.chomp

case a 
when 'add', 'ADD'
    puts 'You have selected add'
when 'sub', 'SUB'
    puts 'You have selected sub'
end