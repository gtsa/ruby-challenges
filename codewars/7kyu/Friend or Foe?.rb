def friend(friends)
  friends.select { |x| x.chars.length == 4 }
end
