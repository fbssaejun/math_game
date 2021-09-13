class Player 
  attr_accessor :score
  def initialize(name)
    @name = name
    @score = 3
  end

  def win
    @score
  end

  def lose
    @score -= 1
  end

  def to_s
    "#{@name}: #{@score}/3"
  end

end
