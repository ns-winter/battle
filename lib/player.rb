class Player
  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  def attack(target)
    target.hitpoints -= 10
  end
end
