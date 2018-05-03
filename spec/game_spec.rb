require 'game'
describe Game do
  subject(:game) {described_class.new}
  subject(:igor){ Player.new('Igor') }
  subject(:roxana) { Player.new('Roxana') }

  describe '#attack' do
    it 'reduces the hp of the player being attacked' do
      expect(roxana).to receive(:reduce_hp)
      game.attack(roxana)
    end
  end

  describe '#reduce_hp' do
    it 'reduces hp by 10 with every attack' do
      expect{subject.reduce_hp}.to change{subject.hp}.by(-10)
    end
  end

end
