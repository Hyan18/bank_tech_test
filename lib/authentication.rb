class Authentication
  def initialize pin_number
    @pin_number = pin_number
  end

  def verify pin_number
    @pin_number == pin_number
  end
end
