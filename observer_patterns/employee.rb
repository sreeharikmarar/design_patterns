require_relative 'observer'

class Employee
	include Observer
	attr_reader :name
	
	def update(observable)
		puts "Hi #{name}, Your company:'#{observable.name}' price has been changed to #{observable.price}"
	end
end