class Person 
  attr_accessor :score
  def initialize(name, score)
    @name = name
    @score = score
  end

  def win
    @score
  end

  def lose
    @score -= 1
  end

end


class Player1 < Person
end

class Player2 < Person
end
