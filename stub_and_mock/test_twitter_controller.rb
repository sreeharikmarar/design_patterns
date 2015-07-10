require_relative "twitter"
require_relative "twitter_controller"

# require "test/unit"
require 'spec_helper'

class TestTwitterController < Test::Unit::TestCase

  def test_1
    twitter = Twitter.new
    twitter_controller = TwitterController.new(twitter)
    twitter_controller.post("new tweet")
    twitter_controller.read_feed
  end

end
