require 'player'

describe Player do

  let(:player) { described_class.new("max") }

  it 'returns a players name' do
    expect(player.name).to eq "max"
  end

end