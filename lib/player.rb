class Player

  attr_reader :name, :hitpoints

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def attack(attacked_player)
    attacked_player.hitpoints -= value
  end

  private
  attr_writer :hitpoints

end
