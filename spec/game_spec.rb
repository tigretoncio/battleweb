require 'game'

describe Game do

let(:game) {described_class.new}
let(:player) { double :player}

  context '#attack' do
    it "attacks a player" do
      expect(player).to receive(:receive_attack)
      game.attack(player)
    end
  end

end