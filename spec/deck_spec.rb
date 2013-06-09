require 'spec_helper.rb'

describe Deck do
  subject { Deck.new }
  it 'initializes deck' do
    subject.draw.to_s.must_equal 'AS'
  end

  it 'draws next card from top of the deck' do
    subject.draw
    subject.draw.to_s.must_equal 'KS'
  end

  it 'shuffles the deck' do
    subject.shuffle
    subject.draw.to_s.wont_equal 'AS' # This may fail rarely - Would mock out shuffle! if more time
  end
end
