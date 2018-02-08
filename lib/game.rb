class Game

  attr_reader :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def attack(attacked_player, damage = 20)
    attacked_player.receive_damage(damage)
  end

end
