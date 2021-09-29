require 'note'

describe Note do
  let(:formatter) { double :formatter, format: "Title: This is the title\nand this is the body" }
  before(:each) { @note = Note.new("This is the title", "and this is the body", formatter) }

  describe "#initialize" do
    it "adds a title to a note" do
      expect(@note.title).to eq "This is the title"
    end

    it "adds a body to a note" do
      expect(@note.body).to eq "and this is the body"
    end
  end

  describe "#display" do
    it "displays the note in the correct format" do
      expect(@note.display).to eq "Title: This is the title\nand this is the body"
    end
  end
end