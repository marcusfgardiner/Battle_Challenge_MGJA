require 'game'

describe Game do

  let(:player_1) {double("Player 1", name: 'Marcus')}
  let(:player_2) {double("Player 2", name: 'Matt')}

  subject(:game) {Game.new(player_1, player_2)}

  it 'instantiates with 2 players' do
    expect(game.players).to include player_1
    expect(game.players).to include player_2
  end

  describe "#attack" do
    it "calls Player#receive_damage on attacked player" do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end

  describe '#player_one' do
    it 'Returns player 1 object' do
      expect(game.player_one).to eq player_1
    end
  end

  describe '#player_two' do
    it 'Returns player 2 object' do
      expect(game.player_two).to eq player_2
    end
  end

  describe '#switch_turn' do
    it 'Switches the live player object' do
      game.switch_turn
      expect(game.current_player).to eq player_2
    end
  end

end
