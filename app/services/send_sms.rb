require 'twilio-ruby'
class SendSms
  def initialize(number, link)
    @number = number
    @link = link
  end
  def send_message
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    account_token = ENV["TWILIO_AUTH_TOKEN"]
    body = "Hello There #{@link}"
        @client = Twilio::REST::Client.new(account_sid, account_token)
        @client.messages.create(
        body: body,
        from: '+447481340680',
        to: @number
      )
  end
end