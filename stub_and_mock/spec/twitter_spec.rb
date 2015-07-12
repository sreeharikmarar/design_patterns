require_relative '../twitter'
require_relative '../twitter_controller'

describe "Twitter object stub" do
  it "returns the specified value of twitter class" do
    Twitter.any_instance.stub(:read_feed).and_return("sample twitter feed")

    twitter = Twitter.new
    expect(twitter.read_feed).to eql("sample twitter feed")

  end
  
  it "returns the specified value of twitter controller class" do
    Twitter.any_instance.stub(:post).and_return("sample twitter feed")

    twitter = Twitter.new
    controller = TwitterController.new(twitter)
    
    expect(controller.post("new post")).to eql("sample twitter feed")

  end
end

# describe "Twitter verify Post method" do

#   it "verify post method being called or not" do
#     allow_any_instance_of(Twitter).to receive(:post).with("sample tweet").and_return(true)
#     allow_any_instance_of(TwitterController).to receive(:post).with("sample tweet").and_return("sample post")
    
#     twitter = Twitter.new
#     controller = TwitterController.new(twitter)

#     expect(twitter.post("sample tweet")).to eq(true)
#     expect(controller.post("sample tweet")).to eq("sample tweet")
#   end
# end
