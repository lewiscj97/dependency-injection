require 'diary'

describe Diary do
  before(:each) { @diary = Diary.new(entry_class_double) }
  let(:entry_double) { double :entry, title: "This is the title", body: "and this is the body" }
  let(:entry_class_double) { double :entry_class, new: entry_double }

  describe "#add" do
    it "adds a new entry to the diary" do
      @diary.add("This is the title", "and this is the body")
      expect(@diary.entries).to include entry_double
    end
  end

  describe "#index" do
    it "returns the titles" do
      @diary.add("This is the title", "and this is the body")
      @diary.add("This is the title", "and this is the body")
      expect(@diary.index).to eq "This is the title\nThis is the title"
    end
  end  
end