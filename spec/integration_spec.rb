require_relative "../lib/menu"
require_relative "../lib/order"
require_relative "../lib/texting"

RSpec.describe Order do
  it "adds item to order and reads back the order" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    my_order.add(choice_1)
    my_order.add(choice_2)
    expect(my_order.read_back).to eq [{"Egg Fried Rice"=>4.0}, {"Prawn Crackers"=>2.0}]
  end
  
  it "adds item to order and reads back the order" do
    choice_1 = Menu.new("Egg Fried Rice")
    my_order = Order.new("Adam", "07584573146")
    expect(my_order.read_back).to eq "Your order is empty"
  end

  it "if @order_placed is true then receipt can be printed" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    order_message = Text.new(my_order)
    my_order.add(choice_1)
    my_order.add(choice_2)
    my_order.place_order
    expect(my_order.print_receipt).to eq [{"Egg Fried Rice"=>4.0}, {"Prawn Crackers"=>2.0}]
  end

  it "if order is empty and they ask to place returns message to inform user" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    order_message = Text.new(my_order)
    expect(my_order.place_order).to eq "You have not added any items to your order"
  end

  it "if @order_placed is false then receipt can't be printed" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    order_message = Text.new(my_order)
    my_order.add(choice_1)
    my_order.add(choice_2)
    expect(my_order.print_receipt).to eq "Your order has not been placed yet"
  end

  it "if order is less than 6 items text says 30 mins" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    order_message = Text.new(my_order)
    my_order.add(choice_1)
    my_order.add(choice_2)
    expect(my_order.place_order).to eq "Message sent => Thank you. Your order has been placed and will be ready in 30 mins"
  end

  it "if order is >= 6 items text says 45 mins" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    choice_3 = Menu.new("Prawn Crackers")
    choice_4 = Menu.new("Prawn Crackers")
    choice_5 = Menu.new("Prawn Crackers")
    choice_6 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    order_message = Text.new(my_order)
    my_order.add(choice_1)
    my_order.add(choice_2)
    my_order.add(choice_3)
    my_order.add(choice_4)
    my_order.add(choice_5)
    my_order.add(choice_6)
    expect(my_order.place_order).to eq "Message sent => Thank you. Your order has been placed and will be ready in 45 mins"
  end

  xit "returns an itemised receipt with grand total" do
    choice_1 = Menu.new("Egg Fried Rice")
    choice_2 = Menu.new("Prawn Crackers")
    my_order = Order.new("Adam", "07584573146")
    order_message = Text.new(my_order)
    my_order.add(choice_1)
    my_order.add(choice_2)
    my_order.place_order
    expect(my_order.print_receipt).to eq "Your grand total is £6"
  end
end