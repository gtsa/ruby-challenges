def bmi(weight, height)
  bmi = weight/height/height
  if bmi <= 18.5
    return "Underweight"
  elsif bmi <= 25
    return "Normal"
  elsif bmi <= 30
    return "Overweight"
  else
    return "Obese"
  end
end
