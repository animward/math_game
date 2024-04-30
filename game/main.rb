require_relative 'game'

puts
puts " \e[35m Welcome to the Math Game! \e[0m "
sleep(1)
puts

puts " \e[94mPlayer 1, enter your name: \e[0m "
player1_name = gets.chomp
puts

puts " \e[94m Player 2, enter your name: \e[0m "
player2_name = gets.chomp
puts

game = Game.new(player1_name, player2_name)
game.start_game