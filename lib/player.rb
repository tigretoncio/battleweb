class Player

  attr_reader :name, :hp

  HP = 10
  DAMAGE = 5

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def receive_attack
    @hp -= DAMAGE
  end

end
