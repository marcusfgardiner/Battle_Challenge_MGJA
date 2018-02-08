class Game

  def initialize(player_class = Player, name_1, name_2)
    @player_1 = player_class.new(name_1)
    @player_2 = player_class.new(name_2)
  end

end
