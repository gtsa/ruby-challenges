def pofi(n)
  if n == 0 || n % 4 == 0
    return "1"
  elsif n % 2 == 0 && n % 4 != 0
    return "-1"
  else
    if (n - 1) % 4 == 0
      return "i"
    else
      return "-i"
    end
  end
end
