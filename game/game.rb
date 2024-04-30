require_relative 'player'
require_relative 'math_problem'

class Game

	def initialize(player1_name, player2_name)
		@player1 = Player.new(player1_name)
		@player2 = Player.new(player2_name)
		@current_player = @player1
		@math_problem = MathProblem.new
	end

	def start_game
		puts "Welcome to the Math Game!"
		until game_over?
			puts "----- NEW TURN -----"
			puts "#{current_player.name}: What does #{math_problem.generate_problem}"
			answer = gets.chomp.to_i
			correct_answer = math_problem.check_answer(answer)
			current_player.answer_question(correct_answer)
			display_scores
			switch_turn
		end
		announce_winner
	end

		def switch_turn
			@current_player = (@current_player == @player1) ? @player2 : @player1
		end
	
		def game_over?
			@player1.lives == 0 || @player2.lives == 0
		end
	
		def display_scores
			puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
		end
	
		def announce_winner
			winner = (@player1.lives == 0) ? @player2 : @player1
			puts "#{winner.name} wins with a score of #{winner.lives}/3"
			puts "----- GAME OVER -----"
			puts "Good bye!"
		end
	
		private
	
		attr_reader :player1, :player2, :current_player, :math_problem

end