class Player

  attr_reader :name, :hp

  HP = 30
  DAMAGE = 5

  def initialize(name, hp = HP)
    @name = name
    @hp = hp
  end

  def receive_attack(points=Kernel.rand(11))
    @hp -= points
  end

end
