require_relative 'subscriber'

class Subscriber1 < Subscriber
	def update(price)       # callback for observer
    if price > @limit
      print "+++ Subscriber 1 +++ : Price above #@limit: #{price}\n"
    end
  end
end