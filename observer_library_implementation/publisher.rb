require_relative "observable"
require_relative "Price"

class Publisher
	include Observable

	def initialize(symbol)
	  @symbol = symbol
  end

  def run
  	lastPrice = nil
      loop do
        price = Price.fetch(@symbol)
        print "Current price: #{price}\n"
        if price != lastPrice
          changed                 # notify observers
          lastPrice = price
          notify_observers(price)
        end
        sleep 1
      end
  end
end