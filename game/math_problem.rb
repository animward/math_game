class MathProblem

	def initialize
		generate_problem
	end

	def generate_problem
		@number1 = rand(1..20)
    @number2 = rand(1..20)
		"#{@number1} plus #{@number2}"
	end

	def check_answer(answer)
		answer == @number1 + @number2
	end

end