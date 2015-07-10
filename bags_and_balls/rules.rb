class Rules < Array

	def add(rule)
		self << rule
	end

	def apply(balls,ball)
		self.each do |rule|
			if(rule.is_applicable(ball) && !rule.apply(balls,ball))
				return false;
			end
		end
		true
	end

end
