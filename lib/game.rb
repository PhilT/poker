class Game
  def initialize(deck = Deck.new)
    @deck = deck
  end

  def deal
    @hand1 = Hand.new(@deck)
    @hand2 = Hand.new(@deck)
  end

  def show
    puts "First hand: #{@hand1}"
    puts "Second hand: #{@hand2}"
  end

  def compare
    if @hand1 > @hand2
      puts 'First hand wins!'
    elsif @hand2 > @hand1
      puts 'Second hand wins!'
    else
      puts 'Draw!'
    end
  end
end
