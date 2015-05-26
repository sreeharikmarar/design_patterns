require_relative "bag"
require_relative "ball"
require_relative "color"
require "test/unit"

class TestBagsAndBalls < Test::Unit::TestCase

  def test_maximum_five_balls

    bag = Bag.new
    bag.rules.add(MaxSizeRule.new)
    

    ball_1 = Ball.new(Color::RED)
    ball_2 = Ball.new(Color::GREEN)
    ball_3 = Ball.new(Color::BLUE)
    ball_4 = Ball.new(Color::YELLOW)
    ball_5 = Ball.new(Color::GREEN)
    ball_6 = Ball.new(Color::YELLOW)

    

    assert_equal(bag.add_ball(ball_1),true)
    assert_equal(bag.add_ball(ball_2),true)
    assert_equal(bag.add_ball(ball_3),true)
    assert_equal(bag.add_ball(ball_4),true)
    assert_equal(bag.add_ball(ball_5),true)
    assert_equal(bag.add_ball(ball_6),false)
    
    
  end

  def test_max_three_green_balls
    bag = Bag.new
    bag.rules.add(MaxThreeGreenBallRule.new)

    ball_1 = Ball.new(Color::GREEN)
    ball_2 = Ball.new(Color::GREEN)
    ball_3 = Ball.new(Color::GREEN)
    ball_4 = Ball.new(Color::GREEN)

    assert_equal(bag.add_ball(ball_1),true)
    assert_equal(bag.add_ball(ball_2),true)
    assert_equal(bag.add_ball(ball_3),true)
    assert_equal(bag.add_ball(ball_4),false)

  end

end
