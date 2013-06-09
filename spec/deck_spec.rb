require 'spec_helper.rb'

describe Deck do
  subject { Deck.new }
  it 'initializes deck' do
    subject.next.to_s.must_equal 'AS'
  end

  it 'gets next card from top of the deck' do
    subject.next
    subject.next.to_s.must_equal 'KS'
  end

  it 'shuffles the deck' do
    subject.shuffle
    subject.next.to_s.wont_equal 'AS' # This may fail rarely - Would mock out shuffle! if more time
  end
end
