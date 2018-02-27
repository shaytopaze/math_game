require './Players'
require './Question'
class Game
 def initialize
   @player1 = Player.new('Player1')
   @player2 = Player.new('Player2')
   @current_player = 'Player2'
   while @player1.lives != 0 && @player2.lives != 0 do
     switch_player()
     ask_question()
   end
   get_result()
 end
 def switch_player
   @current_player = @current_player == 'Player1' ? 'Player2' :'Player1'
 end
 def ask_question
   question = Question.new
   question.ask_question(@current_player)
   if question.check_answer
     puts "#{@current_player}: Yes! You are correct"
   else
     puts "#{@current_player}: Seriously? No"
     if @current_player == 'Player1'
       @player2.lives -= 1
     elsif @current_player == 'Player2'
       @player1.lives -= 1
     end
   end
   puts "P1: #{@player1.lives} / 3 vs P2 : #{@player2.lives} /3"
 end

 def get_result
   if @player1.lives == 0
     puts "#{@player2.name} wins with a score of #{@player2.lives} /3"
   elsif @player2.lives == 0
     puts "#{@player1.name} wins with a score of #{@player1.lives} /3"
   end

 end

end

game = Game.new
