
require_relative 'observable'

class Company
	include Observable
	attr_reader :name
	attr_accessor :price, :observers

	def initialize(name,price)
		super()
		@name = name
		@price = price
	end

	def change_price(new_price)
		change_in_price = false
		if(price != new_price)
			@price = new_price
			notify_observers
			change_in_price = true
		end
		change_in_price
	end

end
