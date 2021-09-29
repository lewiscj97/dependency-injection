require 'note_formatter'

describe NoteFormatter do
  let(:note) { double :note, title: "Title", body: "Body" }
  it "formats a note" do
    expect(subject.format(note)).to eq "Title: Title\nBody"
  end
end