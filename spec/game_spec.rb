require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2, :hp => 0}
  let(:test_game) { Game.new(player1, player2)}

  describe '#attack' do
    it 'attacks a player' do
      allow(player1).to receive(:attack)
      player1.attack(player2)
    end
  end
  describe '#switch_turn' do
    it 'switches turns from player1 to player2' do
     expect(test_game.switch_turn).to eq(test_game.player1)
    end
  end
  describe '#gameover' do
    it "returns true if a player has zero hp" do
      allow(test_game.player2).to receive(:hp).and_return(0)
      expect(test_game.gameover?).to eq(true)
    end
  end
end