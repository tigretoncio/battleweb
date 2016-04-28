class Game

  attr_reader :player1, :player2, :current_player, :opponent, :loser_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
    @opponent = player2
  end

  def attack(player)
    player.receive_attack
    check_loser
  end

  def switch
    (@current_player, @opponent = @opponent, @current_player) unless @player1.hp == Player::HP && player2.hp == Player::HP
  end

  def check_loser
    if @player1.hp <= 0
      @loser_player = @player1
    elsif @player2.hp <= 0
      @loser_player = @player2
    end
    @loser_player
  end

  def winner
    players = [@player1, @player2]
    players.reject{|x| x == @loser_player}.first
  end

end
