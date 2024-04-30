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
		puts " \e[92m Starting Game... \e[0m "
		sleep(1.4)
		puts
		until game_over?
			sleep(1)
			puts " \e[36m ----- NEW TURN ----- \e[0m "
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
			sleep(1)
			puts " \e[33m ----- SCOREBOARD ----- \e[0m "
			puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
			puts
		end
		def announce_winner
			winner = (@player1.lives == 0) ? @player2 : @player1
			sleep(1)
			puts "\e[92m #{winner.name} wins with a score of #{winner.lives}/3 \e[0m "
			puts
			sleep(1)
			puts " \e[91m ----- GAME OVER ----- \e[0m "
			puts
			sleep(1)
			puts "\e[35m Good bye! \e[0m"
			puts
			sleep(3)
		end
	
		private
	
		attr_reader :player1, :player2, :current_player, :math_problem

end