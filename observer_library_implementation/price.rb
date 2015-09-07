class Price ### A mock class to fetch a stock price (60 - 140).
  def Price.fetch(symbol)
    60 + rand(80)
  end
end