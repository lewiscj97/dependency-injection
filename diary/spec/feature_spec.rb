require 'diary'

describe Diary do
  describe "#add" do
    it "adds an entry to the diary" do
      subject.add("This is the title", "and this is the body")
      expect(subject.entries[0].title).to eq "This is the title"
      expect(subject.entries[0].body).to eq "and this is the body"
    end
  end

  describe "#index" do
    it "shows the titles" do
      subject.add("This is the title", "and this is the body")
      subject.add("This is another title", "and this is the body")
      subject.add("This is my new title", "and this is the body")

      expect(subject.index).to eq "This is the title\nThis is another title\nThis is my new title"
    end
  end
end