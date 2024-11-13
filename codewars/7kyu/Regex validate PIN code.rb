def validate_pin(pin)
  pin.match?(/\A\d{4}\z/) || pin.match?(/\A\d{6}\z/)
end
