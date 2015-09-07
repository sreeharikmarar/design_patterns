class Subscriber
	def initialize(publisher, limit)
    @limit = limit
    publisher.add_observer(self)
  end
end