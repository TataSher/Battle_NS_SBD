require 'player'

describe Player do
  let(:player1) { Player.new('Jack', 60) }
  let(:player2) { Player.new('Emma', 60) }

  it 'should be able to return the name of a player' do
    expect(player1.name).to eq 'Jack'
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player2.receive_damage }.to change { player2.hp }.by(-10)
    end
  end
end
