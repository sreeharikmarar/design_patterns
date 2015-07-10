class TwitterController
  def initialize(twitter)
    @twitter = twitter
  end

  def read_feed
    @twitter.read_feed
  end

  def post(message)
    @twitter.post(message)
  end

end
