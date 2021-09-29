require 'say_hello'

describe SayHello do
  it "says hello" do
    email = subject.run
    expect(email).to eq "To: friend@example.com, HELLO!"
  end
end