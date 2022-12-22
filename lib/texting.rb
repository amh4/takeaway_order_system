require 'twilio-ruby'
require 'dotenv'
Dotenv.load('file1.env')

class Text
  def initialize(order_info)
    @order_info = order_info
  end

  def self.send_text_30_min_wait(name, phone_number)
    account_sid = ENV["ssid"]
    auth_token = ENV["auth_token"]
    client = Twilio::REST::Client.new(account_sid, auth_token)

    cleaned_number = phone_number.split("").drop(1).unshift("+44").join("")

    from = +18106283576
    to = cleaned_number

    client.messages.create(
      from: from,
      to: to,
      body: "Thank you #{name}. Your order has been placed and will be ready at #{Time.now + 30*60*0}"
    )

    return "Message sent successfully"
  end

  def self.send_text_45_min_wait(name, phone_number)
    account_sid = ENV["ssid"]
    auth_token = ENV['auth_token']
    client = Twilio::REST::Client.new(account_sid, auth_token)
    collection_time = Time.now + 45*60*0
    cleaned_number = phone_number.split("").drop(1).unshift("+44").join("")

    from = +18106283576
    to = cleaned_number

    client.messages.create(
      from: from,
      to: to,
      body: "Thank you #{name}. Your order has been placed and will be ready at #{collection_time}"
    )
    return "Message sent successfully"
  end
end

