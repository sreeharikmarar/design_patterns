require_relative 'rule'

class MaxThreeGreenBallRule < Rule

	def apply(balls,ball)
		balls.number_of_green_balls < 3
	end

	def is_applicable(ball)
		true
	end

end
