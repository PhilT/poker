class Deck
  def initialize
    @deck = []
    %w[C D H S].each do |suit|
      %w[2 3 4 5 6 7 8 9 T J Q K A].each_with_index do |name, value|
        @deck << Card.new(suit, name, value)
      end
    end
  end

  def next
    @deck.pop
  end

  def shuffle
    @deck.shuffle!
  end
end
