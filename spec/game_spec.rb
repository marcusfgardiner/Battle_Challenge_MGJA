require 'game'

describe Game do

  let(:player_1) {double("Player 1", name: 'Marcus')}
  let(:player_2) {double("Player 2", name: 'Matt')}

  subject(:game) {Game.new(player_1, player_2)}

  it 'instantiates with 2 players' do
    expect(game.player_1).to eql player_1
    expect(game.player_2).to eql player_2
  end

end
