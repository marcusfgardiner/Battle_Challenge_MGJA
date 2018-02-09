class Game

  attr_reader :players, :current_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_one
    @player_1 = @players.first
  end

  def player_two
    @player_2 = @players.last
  end

  def attack(attacked_player, damage = 20)
    attacked_player.receive_damage(damage)
    switch_turn
  end

  def defending_player
    (@players - [@current_player])[0]
  end

  def game_over?
    player_one.hitpoints <= 0 || player_two.hitpoints <= 0
  end

  private

  def switch_turn
    @current_player = (@players - [@current_player])[0]
  end

end
