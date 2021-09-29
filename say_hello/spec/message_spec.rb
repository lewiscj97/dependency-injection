require 'message'

describe Message do
  describe "#send_email" do
    it { is_expected.to respond_to(:send_email) }
  end
end