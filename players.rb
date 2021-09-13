class Person 
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


class Player1 < Person
end

class Player2 < Person
end


#TESTS
anthony = Player1.new("Anthony")
puts anthony.to_s
anthony.lose
puts anthony.score
puts anthony.to_s
