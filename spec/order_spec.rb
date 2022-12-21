require_relative "../lib/order"

RSpec.describe Order do
  it "Takes an instance of menu (item), adds it to order, reads it back" do
    my_order = Order.new("Adam", "07584573145")
    my_order.add(double(:fake_menu_choice, list_choice: {"Egg Fried Rice" => 5.00}))
    expect(my_order.read_back).to eq [{"Egg Fried Rice" => 5.00}]
  end
end