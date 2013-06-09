require 'spec_helper'

describe Game do
  let(:mock_deck) { MiniTest::Mock.new }
  subject { Game.new(mock_deck) }

  it 'displays dealt hands' do
    mock_deck.expect(:draw, Card.new('C', '2', nil))
    subject.deal
    proc { subject.show }.must_output "First hand: 2C 2C 2C 2C 2C\nSecond hand: 2C 2C 2C 2C 2C\n"
  end

  it 'compares hands' do
    mock_deck.expect(:draw, Card.new('C', '2', nil))
    subject.deal
    proc { subject.compare }.must_output 'Draw!'
  end
end
