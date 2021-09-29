class Message

  def initialize
    @to
    @body
  end

  def send_email(to, body)
    # Imagine I'm sending an email
    "To: #{to}, #{body}"
  end

  attr_reader :body, :to
end