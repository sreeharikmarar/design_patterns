require 'rubygems'
require 'pry'

require_relative "balls"
require_relative "rules"
require_relative "max_size_rule"
require_relative "max_three_green_balls_rule"
require_relative 'balls'

class Bag

	attr_reader :balls, :rules

	def initialize
		@balls = Balls.new
		@rules = Rules.new
	end

	def add_rules(rule)
		@rules.add(rule)
	end

	def add_ball(ball)
		if rules.apply(balls,ball)
			balls.add(ball)
			true
		else
			false
		end
	end
end