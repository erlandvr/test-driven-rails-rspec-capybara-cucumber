require_relative '../lib/bowling_game'

describe BowlingGame do
  let(:game) { BowlingGame.new }

  it 'scores a gutter game' do
    #this method takes an array of all rolls in a game
    game.pins([0]*20) #array of 20 times 0
    expect(game.score).to equal(0)
  end

  it 'scores a game of 1s' do
    game.pins([1]*20)
    expect(game.score).to eq(20)
  end

  it 'scores a game with spare' do
    game.pins([4,6,5] + [0]*17)
    expect(game.score).to eq(20)
  end

  it 'scores a game with strike' do
    game.pins([10,1,1] + [0]*17)
    expect(game.score).to eq(14)
  end

  it 'scores a perfect game' do
    game.pins([10]*12)
    expect(game.score).to eq(300)
  end
end
