class Player

  attr_reader :name, :hitpoints
  # attr_accessor

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(attacked_player, damage = 20)
    attacked_player.receive_damage(damage)
  end

  def receive_damage(damage)
    @hitpoints -= damage
  end
end
