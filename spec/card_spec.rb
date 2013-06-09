require 'spec_helper'

describe Card do
  subject { Card.new('C', '5', nil) }

  it 'combines suit and name' do
    subject.to_s.must_equal '5C'
  end
end
