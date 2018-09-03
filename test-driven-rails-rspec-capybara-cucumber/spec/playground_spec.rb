require_relative '../lib/playground'

describe Playground do
  #the use of the keyword when, indicates the use of common context --> that means we can put two "it's" with a common context in a new describe
  #context == describe
  context 'when there are no children' do
    let(:playground) { Playground.new(0) }

    it 'is quite boring place' do # when there are no children'
     mood = playground.mood
     expect(mood).to eq('boring')
    end

    it 'is empty' do  #when there are no children'
      expect(playground).to be_empty
    end
  end
end
