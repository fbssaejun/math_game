class Question
  attr_accessor :question
  def initialize
    randomNumber1 = rand(1..20)
    randomNumber2 = rand(1..20)
   
    @question =  "What does #{randomNumber1} plus #{randomNumber2} equal?"
  end

end
