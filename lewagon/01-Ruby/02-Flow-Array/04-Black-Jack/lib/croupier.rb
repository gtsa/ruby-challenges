require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank's score is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score > 21
    message = "You busted! Your score (#{player_score}) is above 21. You lost!"
  elsif player_score == 21
    message = "Black Jack"
  elsif player_score > bank_score && player_score != 21
    message = "You (#{player_score}) beat the bank (#{bank_score})! You win!"
  elsif player_score < bank_score
    message = "Your score (#{player_score}) is lower than the bank's (#{bank_score})! You lost!"
  elsif player_score == bank_score
    message = "It's a 'Push'. You are getting your money back"
  end
  return message
end
