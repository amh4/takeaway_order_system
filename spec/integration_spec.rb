require_relative "../lib/menu"
require_relative "../lib/order"

RSpec.describe Order do
  it "adds item to order and reads back the order" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573145")
    my_order.add(choice_1)
    my_order.add(choice_2)
    expect(my_order.read_back).to eq [{"Egg Fried Rice"=>4.0}, {"Prawn Crackers"=>2.0}]
  end
  
  it "adds item to order and reads back the order" do
    choice_1 = Menu.new("Egg Fried Rice")
    my_order = Order.new("Adam", "07584573145")
    expect(my_order.read_back).to eq "Your order is empty"
  end
end