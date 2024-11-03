require_relative "croupier"
# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card
player = 0
bank = pick_bank_score
puts state_of_the_game(player, bank)
puts 'Card? "y" or "yes" to get a new card'
choice = gets.chomp
while ["y", "yes"].include?(choice)
  player += pick_player_card
  if player >= 21 || player > bank
    break
  else
    puts state_of_the_game(player, bank)
    puts 'Card? "y" or "yes" to get a new card'
  end

  choice = gets.chomp
end

puts end_game_message(player, bank)
