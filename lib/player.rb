class Player

  attr_reader :name, :hitpoints
  # attr_accessor

  def initialize(name, hitpoints = 100)
    @name = name
    @hitpoints = hitpoints
  end

  def receive_damage(damage)
    @hitpoints -= damage
  end
end
