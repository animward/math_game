require_relative 'game'

puts "Player 1, enter your name:"
player1_name = gets.chomp
puts "Player 2, enter your name:"
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)
game.start_game