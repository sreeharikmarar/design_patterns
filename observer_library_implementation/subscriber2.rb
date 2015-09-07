require_relative 'subscriber'

class Subscriber2 < Subscriber
	def update(price) # callback for observer
    if price < @limit
      print "--- Subscriber 2 --- : Price below #@limit: #{price}\n"
    end
  end
end