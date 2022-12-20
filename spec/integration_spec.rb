require_relative "../lib/menu"
require_relative "../lib/order"
require_relative "../lib/texting"

RSpec.describe Order do
  it "adds items to the order and reads it back" do
    my_menu = Menu.new
    my_order = Order.new("Adam", "07584573146")
    my_order.add("Egg Fried Rice")
    my_order.add("Chow Mein")
    my_order.add("Prawn Crackers")
    expect(my_order.read_back).to eq ["Egg Fried Rice", "Chow Mein", "Prawn Crackers"]
  end

  it "informs user if order list is empty" do
    my_menu = Menu.new
    my_order = Order.new("Adam", "07584573146")
    expect(my_order.read_back).to eq "Your order is currently empty. Please choose some items"
  end
end