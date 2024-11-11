def rps(p1, p2)
  if p1 == p2
    "Draw!"
  elsif p1 == "paper"
    if p2 == "scissors"
      "Player 2 won!"
    else
      "Player 1 won!"
    end
  elsif p1 == "rock"
    if p2 == "paper"
       "Player 2 won!"
    else
      "Player 1 won!"
    end
  else
    if p2 == "rock"
      "Player 2 won!"
    else
      "Player 1 won!"
    end
  end
end
