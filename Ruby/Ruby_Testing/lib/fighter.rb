class Fighter
  attr_reader :name, :health, :power
  def initialize(name:, health:, power:)
    @name = name
    @health = health
    @power = power
  end

  def name
    @name
  end

  def health
    @health
  end

  def power
    @power
  end

end
