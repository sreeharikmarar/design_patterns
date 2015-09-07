require_relative "Publisher"
require_relative "subscriber1"
require_relative "subscriber2"

require "test/unit"

class TestObseverPattern < Test::Unit::TestCase

  def test_simple
    publisher = Publisher.new("item_1")

    Subscriber1.new(publisher,80)
    Subscriber2.new(publisher,120)

    publisher.run   

  end

end