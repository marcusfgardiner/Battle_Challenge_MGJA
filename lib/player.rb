class Player

  attr_reader :name
  attr_accessor :hitpoints

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(attacked_player, damage = 20)
    attacked_player.hitpoints -= damage
  end

end
