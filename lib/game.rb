class Game

  attr_reader :player1, :player2, :current_player, :opponent

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_attack
  end

  def switch
    (@current_player, @opponent = @opponent, @current_player) unless @player1.hp == 100 && player2.hp == 100
  end

end