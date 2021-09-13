class Player 
  attr_accessor :score
  attr_reader :name
  def initialize(name)
    @name = name
    @score = 3
  end

  def win
    score
  end

  def lose
    self.score -= 1
  end

  def to_s
    "#{self.name}: #{self.score}/3"
  end

end
