module Observer

	def initialize(name)
		@name = name
	end

	def update(observable)
		puts "update message from #{observable}"
	end

end