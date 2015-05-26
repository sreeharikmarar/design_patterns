class Balls < Array

	def add(ball)
		self << ball
	end

	def number_of_balls
		self.size
	end

	def number_of_green_balls
		self.select {|ball| ball.color == "green"}.size
	end

end