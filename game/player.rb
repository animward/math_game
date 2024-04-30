class Player

	attr_accessor :name, :lives

	def initialize(name)
		@name = name
		@lives = 3
	end

	def answer_question(answer)
		if answer == true
			puts " \e[32m #{@name}: YES! You are correct. \e[0m "
    else
      lose_life
      puts " \e[31m #{@name}: Seriously? No! \e[0m "
		end
	end

	def lose_life
		@lives -= 1
	end
end