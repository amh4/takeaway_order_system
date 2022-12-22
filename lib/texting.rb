require 'twilio-ruby'
require 'dotenv'
Dotenv.load('file1.env')

class Text
  def initialize(order_info)
    @order_info = order_info
  end

  def self.send_text(name, phone_number, order_size)
    account_sid = ENV["ssid"]
    auth_token = ENV["auth_token"]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    cleaned_number = phone_number.split("").drop(1).unshift("+44").join("")

    from = +18106283576
    to = cleaned_number

    if order_size < 6
      client.messages.create(
        from: from,
        to: to,
        body: "Thank you #{name}. Your order has been placed and will be ready at #{Time.now + (1*30*60)}"
      )
    else
      client.messages.create(
        from: from,
        to: to,
        body: "Thank you #{name}. Your order has been placed and will be ready at #{Time.now + (1*45*60)}"
      )
    end
    return "Message sent successfully"
  end
end

