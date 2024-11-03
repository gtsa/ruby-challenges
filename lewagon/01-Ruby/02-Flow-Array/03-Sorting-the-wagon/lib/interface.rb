require_relative "wagon_sort"
# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp
wagon_list = []
puts "Type a student name:"
name = gets.chomp
until name == ""
  wagon_list.push(name)
  puts "Type another student name or press enter to finish:"
  name = gets.chomp
end





# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
puts "Congratulations! Your Wagon has #{wagon_list.size} student#{wagon_list.size > 1 ? 's' : ''}:\n"
result = wagon_sort(wagon_list)
print result.size > 1 ? result[0..-2].join(', ') : result[0]
puts result.size > 1 ? " and #{result[-1]}" : ""
