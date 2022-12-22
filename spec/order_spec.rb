require_relative "../lib/order"

RSpec.describe Order do
  it "Takes an instance of menu (item), adds it to order, reads it back" do
    my_order = Order.new("Adam", "07584573146")
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return({"Egg Fried Rice" => 4.00})
    my_order.add(fake_choice)
    expect(my_order.read_back).to eq [{"Egg Fried Rice" => 4.00}]
  end
  
  it "Takes an instance of menu (item), adds it to order, reads it back" do
    my_order = Order.new("Adam", "07584573146")
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return("Your order is empty")
    expect(my_order.read_back).to eq "Your order is empty"
  end
end