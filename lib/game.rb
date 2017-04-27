class Game
  attr_reader :player_1, :player_2, :player_1_turn


  def initialize (player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_turn = 1
  end

  #  def attack(target)
  #    target.hitpoints -= 10
  #  end

  def attack
    @player_1_turn == 1 ? @player_2.hitpoints -= rand(1..20) : @player_1.hitpoints -= rand(1..20)
    oppo
   end

    def oppo
      if @player_1_turn == 1
        @player_1_turn = 0
      else
        @player_1_turn = 1
      end
    end
  end
