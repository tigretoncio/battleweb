class Player

  attr_reader :name, :hp

  HP = 100
  DAMAGE = 5

  def initialize(name)
    @name = name
    @hp = HP
  end

  def attack
    @hp -= DAMAGE
  end

end