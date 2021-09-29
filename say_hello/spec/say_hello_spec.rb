require 'say_hello'

describe SayHello do
  let(:email_client) { double :email_client }
  before(:each) { @subject = SayHello.new(email_client) }

  describe "#run" do
    it "responds to the run method" do
      expect(@subject).to respond_to(:run)
    end
  end
end