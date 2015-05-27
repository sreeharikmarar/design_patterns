require_relative "measurement"

require "test/unit"

class TestMeasurement < Test::Unit::TestCase

  def test_cm_conversion
    
    assert_equal(Measurement.new(1).cm.to_mm,10)
    assert_equal(Measurement.new(2).cm.to_mm,20)

    assert_equal(Measurement.new(1).cm.to_m,0.01)
    assert_equal(Measurement.new(2).cm.to_m,0.02)

  end

end
