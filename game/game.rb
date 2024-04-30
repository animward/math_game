require_relative 'player'

class Game
	def initialize(player1_name, player2_name)
		@player1 = Player.new(player1_name)
		@player2 = Player.new(player2_name)
		@current_player = @player1
	end








	
end