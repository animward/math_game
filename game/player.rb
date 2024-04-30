class Player

	attr_accessor :name, :lives

	def initialize(name)
		@name = name
		@lives = 3
	end

	def answer_question(answer)
		if answer == true
			puts "#{@name}: YES! You are correct."
    else
      lose_life
      puts "#{@name}: Seriously? No!"
		end
	end









end