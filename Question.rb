class Question
 def initialize
   @operand1 = rand(1..20)
   @operand2 = rand(1..20)
   @answer = nil
 end

 def ask_question(name)
   puts "#{name} : What does #{@operand1}  plus #{@operand2}  equal?"
   @answer = gets.to_i
 end

 def check_answer
   return (@answer == @operand1 + @operand2)
 end
end

