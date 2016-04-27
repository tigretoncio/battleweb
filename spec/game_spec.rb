require 'game'

describe Game do

let(:game) {described_class.new(player1, player2)}
let(:player1) { double :player1}
let(:player2) { double :player2}

  context '#attack' do
    it "attacks a player" do
      expect(player2).to receive(:receive_attack)
      game.attack(player2)
    end
  end

end