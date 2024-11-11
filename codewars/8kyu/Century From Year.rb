def century(year)
  year/100 + (year-(year/100*100)>0 ? 1 : 0)
end
