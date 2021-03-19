class Game



  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.new_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game 
  end

end



print Game.new_game("A","B")
print Game.current_game