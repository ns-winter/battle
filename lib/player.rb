class Player
  attr_accessor :hitpoints, :name

  def initialize(name)
    @name = name
    @hitpoints = 100
  end

  # def attack(target)
  #   target.hitpoints -= 10
  # end
end
