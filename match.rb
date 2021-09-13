require './player'
require './questions'

class Match
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def play 
    counter = 0
    while @player1.score > 0 && @player2.score > 0 do
      currentPlayer = counter % 2 == 0 && counter % 2 != 1 ? 1 : 2
      problem = Question.new
      puts "Player #{currentPlayer}: #{problem.question}"
      print "> "

      playerAnswer = gets.chomp.to_i

      if playerAnswer == problem.answer
        puts "Player #{currentPlayer}: YES! You are correct"
        puts "P1: #{@player1.score} vs P2: #{@player2.score}"
        counter += 1
        puts "----- NEW TURN -----"        
      else
        counter += 1
        puts "Seriously? No!"
        if currentPlayer == 1
          @player1.lose
        else
          @player2.lose
        end
        puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
        puts "----- NEW TURN -----"        
      end

    end
    
    if @player1.score == 0 || @player2.score == 0
      if @player1.score == 0 
        puts "Player 2 wins with a score of #{@player2.score}/3"
      else
        puts "Player 1 wins with a score of #{@player1.score}/3"
      end
      puts "----- GAME OVER -----"
      puts "GOOD BYE!"

    end

  end # play def end

end #Match class end
