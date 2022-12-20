require_relative "../lib/order"

RSpec.describe Order do
  it "adds item to order and reads it back" do
    item_1 = double :item
    item_2 = double :item
    my_order = Order.new("Adam", "07584573146")
    my_order.add(item_1)
    my_order.add(item_2)
    expect(my_order.read_back).to eq [item_1, item_2]
  end
end