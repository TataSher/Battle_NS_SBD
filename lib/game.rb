class Game

attr_reader :player1, :player2, :current_player, :previous_player

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_player = @player1
    @previous_player = @player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if @current_player == @player1 
        @current_player = @player2
    else
      @current_player = @player1
    end
    if @previous_player == @player2
      @previous_player = @player1 
    else
      @previous_player = @player2
    end
  end

  def gameover?
    previous_player.hp == 0 ? true : false
  end
end 