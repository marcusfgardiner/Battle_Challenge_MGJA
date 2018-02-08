require 'game'

describe Game do

  let(:player_1) {double("Player 1", name: 'Marcus')}
  let(:player_2) {double("Player 2", name: 'Matt')}

  subject(:game) {Game.new(player_1, player_2)}

  it 'instantiates with 2 players' do
    expect(game.player_1).to eql player_1
    expect(game.player_2).to eql player_2
  end

  describe "#attack" do
    it "calls Player#receive_damage on attacked player" do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end

end
