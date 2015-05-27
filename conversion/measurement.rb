require 'rubygems'
require 'pry'

class Measurement 

  attr_accessor :amount

  def initialize(amount)
    @amount = Integer(amount)
  end

  def cm
    self
  end

  def *(factor)
    return Measurement.new(self.amount * factor.amount)
  end

  def /(factor)
    return Measurement.new(self.amount / factor.amount)
  end

  def to_f
    return amount.to_f
  end

  def to_mm
    mm = cm * Measurement.new(10)
    mm.amount
  end

  def to_m
    cm.amount.to_f / Measurement.new(100).to_f
  end

end
