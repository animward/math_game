class Player

	attr_accessor :name, :lives

	def initialize(name)
		@name = name
		@lives = 3
	end

	def answer_question(answer)
		sleep(1)
		if answer == true
			puts " \e[32m #{@name}: YES! You are correct. \e[0m "
			puts
    else
      lose_life
      puts " \e[31m #{@name}: Seriously? No! \e[0m "
			puts
		end
	end

	def lose_life
		@lives -= 1
	end
end