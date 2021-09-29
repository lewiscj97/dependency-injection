require_relative 'email_client'
require_relative 'message'

class SayHello

  def initialize(email = EmailClient.new)
    @email = email
  end

  def run
    @email.message.send_email(
      "friend@example.com",
      "HELLO!"
    )
  end
end