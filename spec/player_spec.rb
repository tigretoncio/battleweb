require 'player'

describe Player do

  let(:player) { described_class.new("max") }

  it 'returns a players name' do
    expect(player.name).to eq "max"
  end

  it "on attack, reduces player2's HP" do
    expect{ player.attack }.to change{player.hp}.by -Player::DAMAGE
  end

end