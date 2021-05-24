class Player

  attr_reader :lives
  attr_reader :max_lives

  def initialize(max_lives)
    @max_lives = max_lives
    @lives = max_lives
  end

  def lose_life
    @lives -= 1
  end

  def reset
    @lives = @max_lives
  end
end
