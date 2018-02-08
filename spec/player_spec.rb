require 'player'

describe Player do
  subject(:falcon) { described_class.new('Falcon') }

  describe '#name' do
    it "returns the player's name" do
      expect(falcon.name).to eq 'Falcon'
    end
  end
end
