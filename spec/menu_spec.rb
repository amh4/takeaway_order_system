require_relative "../lib/menu"

RSpec.describe Menu do
  it "returns a menu stored as a hash" do
    my_choice = Menu.new("Egg Fried Rice")
    expect(my_choice.list_menu).to eq ({"Egg Fried Rice" => 4.00, "Chow Mein" => 5.00, "Prawn Crackers" => 2.00, "Spicy Beef" => 6.50, "Spare Ribs" => 5.50})
  end

  it "takes the user choice and returns the key value pair from the hash" do
    my_choice = Menu.new("Egg Fried Rice")
    expect(my_choice.list_choice).to eq ({"Egg Fried Rice" => 4.00})
  end
end