def open_or_senior(data)
  data.map {|ar| ar[0]>=55 && ar[1]>7 ? "Senior" : "Open" }
end
