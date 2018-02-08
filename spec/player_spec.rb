require 'player'

describe Player do
  subject(:falcon) { described_class.new('Falcon') }
  let(:diamanda) { described_class.new('Diamanada') }

  describe '#name' do
    it "returns the player's name" do
      expect(falcon.name).to eq 'Falcon'
    end
  end

  describe '#hitpoints' do
    it 'returns the hitpoints of the player' do
      expect(falcon.hitpoints).to eq 100
    end
  end

  describe '#attack' do
    it 'attacks a player and reduces the hitpoints' do
      falcon.attack(diamanda)
      expect(diamanda.hitpoints).to eq 80
    end

    # it 'calls reduce hitpoints on attacked player' do
    #   expect(diamanda).to receive(:reduce_hitpoints)
    #   falcon.attack(diamanda)
    # end
  end
end
