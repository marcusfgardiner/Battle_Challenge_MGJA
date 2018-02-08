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

  describe "#receive_damage" do
    it "reduces hitpoints by amount given" do
      damage = 20
      expect{ falcon.receive_damage(damage) }.to change { falcon.hitpoints }.by(-damage)
    end
  end
end
