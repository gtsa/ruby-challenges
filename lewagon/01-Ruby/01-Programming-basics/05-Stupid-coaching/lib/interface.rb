require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.
my_message = nil
puts my_message
while my_message != ""
  my_message = gets.chomp
  puts coach_answer_enhanced(my_message)
end
