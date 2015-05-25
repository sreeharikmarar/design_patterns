require_relative "movie"
require_relative "rental"
require_relative "customer"

require "test/unit"

class TestStatePattern < Test::Unit::TestCase

  def test_1

    movie_1 = Movie.new("harry potter",NewReleasePrice.new)
    movie_2 = Movie.new("lord of the strings",RegularPrice.new)
    movie_3 = Movie.new("cast away",ChildrensPrice.new)

    rental_1 = Rental.new(movie_1,5)
    rental_2 = Rental.new(movie_2,2)
    rental_3 = Rental.new(movie_3,4)

    customer = Customer.new("sreehari")
    customer.add_rental(rental_1)
    customer.add_rental(rental_2)
    customer.add_rental(rental_3)

    assert_equal(movie_1.charge(5),15)
    assert_equal(movie_2.charge(2),2)
    assert_equal(movie_3.charge(4),3)

    puts customer.statement

  end

end
