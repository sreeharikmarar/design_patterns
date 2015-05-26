require_relative 'rule'

class MaxSizeRule < Rule

	def apply(balls,ball)
		balls.number_of_balls < 5
	end

	def is_applicable(ball)
		true
	end

end