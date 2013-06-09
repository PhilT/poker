class Card
  attr_reader :value

  def initialize(suit, name, value)
    @suit, @name, @value = suit, name, value
  end

  def to_s
    @name + @suit
  end
end
