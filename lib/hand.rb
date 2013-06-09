class Hand
  include Comparable

  def initialize(deck)
    @hand = 5.times.map { deck.draw }.compact
    raise 'No more cards' if @hand.size < 5
  end

  def to_s
    @hand.map {|card| card.to_s}.join(' ')
  end

  def <=> other
    hand_type <=> other.hand_type
  end

  def hand_type
    straight_flush ||
      four_of_a_kind ||
      full_house ||
      flush ||
      straight ||
      three_of_a_kind ||
      two_pairs ||
      pair ||
      high_card
  end

  def straight_flush
    same_suit? && consecutive? ? 8 : 0
  end

  def full_house
    same_value?(3) ? 7 : 0
  end

private
  def same_suit?
    @hand.map{|card| card.suit}.uniq.size == 1
  end

  def consecutive?
    values = @hand.map{|card| card.value}.sort
    (values[0]..(values[0] + 5)).to_a == values
  end

  def same_value?(count)
    values = @hand.map{|card| card.value}
    values.uniq.each{|value| return true if values.count(value) == count}
    false
  end

end
