require 'email_client'

describe EmailClient do
  let(:message_class) { double :message_class, new: message }
  let(:message) { double :message }

  before(:each) { @subject = EmailClient.new(message_class) }

  describe "#message" do
    it "returns a new message" do
      expect(@subject.message).to eq message
    end
  end
end
