require_relative "../lib/menu"

RSpec.describe Menu do
  it "returns a menu stored as a hash" do
    my_menu = Menu.new
    expect(my_menu.list_menu).to eq ({"Egg Fried Rice": 4.00, "Chow Mein": 5.00, "Prawn Crackers": 2.00, "Spicy Beef": 6.50, "Spare Ribs": 5.50})
  end
end