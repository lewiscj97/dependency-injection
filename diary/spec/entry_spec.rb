require 'entry'

describe Entry do
  before(:each) { @entry = Entry.new("This is the title", "and this is the body") }

  describe "#title" do
    it "returns the title of the entry" do
      expect(@entry.title).to eq "This is the title"
    end
  end

  describe "#body" do
    it "returns the body of the entry" do
      expect(@entry.body).to eq "and this is the body"
    end
  end
end