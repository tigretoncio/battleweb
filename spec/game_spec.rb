require 'game'

describe Game do

let(:game) {described_class.new(player1, player2)}
let(:player1) { double :player1, hp: 90}
let(:player2) { double :player2, hp: 90}

  context '#attack' do
    it "attacks a player" do
      expect(player2).to receive(:receive_attack)
      game.attack(player2)
    end
  end

  context '#switch' do
    it "if current player is player1, switches game to player2" do
      game.switch
      expect(game.current_player).to eq game.player2
    end

    it "if current player is player2, switches game to player1" do
      game.switch
      game.switch
      expect(game.current_player).to eq game.player1
    end

  end

end