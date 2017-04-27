class Player
  attr_accessor :hit_points, :name

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def receive_damage
    @hit_points -= 10
  end

  def knocked_out?
    @hit_points <= 0 ? true : false
  end

end
