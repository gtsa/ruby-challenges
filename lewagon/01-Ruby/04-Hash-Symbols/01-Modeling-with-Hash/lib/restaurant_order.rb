def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  menu_burger = { "Hamburger" => 250, "Cheese Burger" => 300, "Veggie Burger" => 540 }
  menu_side = { "Sweet Potatoes" => 230, "Salad" => 15 }
  menu_beverage = { "Iced Tea" => 70, "Lemonade" => 90 }
  menu_burger[burger] + menu_side[side] + menu_beverage[beverage]
end
