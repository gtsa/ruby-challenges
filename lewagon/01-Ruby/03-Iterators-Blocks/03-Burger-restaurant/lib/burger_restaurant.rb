def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  ["bread", block_given? ? yield(patty) : patty, sauce, topping, "bread"]
end
