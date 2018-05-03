class Player
  DEFAULT_HP = 60
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def reduce_hp
    @hp -= 10
    @hp
  end
end
