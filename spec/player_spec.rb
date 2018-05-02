require 'player'
describe Player do

  describe '#name' do
    it 'returns the name of the player' do

      expect(subject.name("Igor")).to eq("Igor")
    end

    it 'return the name of another player' do
      expect(subject.name("Roxana")).to eq("Roxana")
    end
  end
end
