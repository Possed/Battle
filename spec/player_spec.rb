require 'player'
describe Player do
  subject(:igor){ described_class.new('Igor') }
  subject(:roxana) { described_class.new('Roxana') }


  describe '#name' do
    it 'returns the name of the player' do
      expect(igor.name).to eq("Igor")
    end

    it 'return the name of another player' do
      expect(roxana.name).to eq("Roxana")
    end
  end

  describe
end
