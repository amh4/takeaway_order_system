require_relative "../lib/order"
require 'dotenv'
Dotenv.load('file1.env')

RSpec.describe Order do
  it "Takes an instance of menu (item), adds it to order, reads it back" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return({"Egg Fried Rice" => 4.00})
    my_order.add(fake_choice)
    expect(my_order.read_back).to eq [{"Egg Fried Rice" => 4.00}]
  end
  
  it "If no item is added it returns notice" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    expect(my_order.read_back).to eq "Your order is empty"
  end
  
  it "Takes an instance of menu (item), and notifies user if not on menu" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return("That is not on the menu")
    expect(my_order.add(fake_choice)).to eq "That is not on the menu"
  end

  it "Takes an instance of menu (item), and notifies user if not on menu" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return("That is not on the menu")
    expect(my_order.add(fake_choice)).to eq "That is not on the menu"
  end

  it "Place order is selected without adding item, notify user" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    expect(my_order.place_order).to eq "You have not added any items to your order"
  end
  
  it "Prints receipt with items and total" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return({"Egg Fried Rice" => 4.00})
    my_order.add(fake_choice)
    my_order.place_order
    expect(my_order.print_receipt).to eq "[{\"Egg Fried Rice\"=>4.0}] Your grand total is £4.0"
  end
  
  it "Takes an instance of menu (item), adds it to order, reads it back" do
    my_order = Order.new("Adam", ENV["mob_number"])
    fake_choice = double :fake_choice
    allow(fake_choice).to receive(:list_choice).and_return({"Egg Fried Rice" => 4.00})
    my_order.add(fake_choice)
    expect(my_order.print_receipt).to eq "Your order has not been placed yet"
  end
end



# NEED TO MOCK TEST TEXT MESSAGES