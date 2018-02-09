require 'game'

describe Game do
  let(:player_1) { double('Player 1', name: 'Marcus', hitpoints: 100) }
  let(:player_2) { double('Player 2', name: 'Matt', hitpoints: 100) }
  let(:dead_player) { double('Dead Player', hitpoints: 0) }

  subject(:game) { Game.new(player_1, player_2) }
  subject(:dead_player_game) { Game.new(player_1, dead_player) }

  it 'instantiates with 2 players' do
    expect(game.players).to include player_1
    expect(game.players).to include player_2
  end

  describe '#attack' do
    it 'calls Player#receive_damage on attacked player' do
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
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
      expect(game.current_player).to eq player_2
    end
  end

  describe '#game_over?' do
    it 'returns false if the game is over' do
      expect(game).not_to be_game_over
    end

    it 'returns true if the game is over' do
      expect(dead_player_game).to be_game_over
    end
  end
end
