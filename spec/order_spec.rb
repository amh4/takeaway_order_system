# require_relative "../lib/order"

# RSpec.describe Order do
#   it "Takes an instance of menu (item), adds it to order, reads it back" do
#     my_order = double(:fake_order, name: "Adam", phone_number: "07584573137")
#     fake_choice = double({"Egg Fried Rice" => 5.00})
#     allow(my_order).to receive(:add).with("Egg Fried Rice").and_return({"Egg Fried Rice" => 5.00})
#     my_order.add(fake_choice)
#     expect(my_order.read_back).to eq [{"Egg Fried Rice" => 5.00}]
#   end

#   # it "If order is empty, notify user" do
#   #   my_order = double(:fake_order, name: "Adam", phone_number: "07584573137")
#   #   expect(my_order.read_back).to eq "Your order is empty"
#   # end

#   # # NEED TO INVESTIGATE IF DOUBLES BEING USED CORRECTLY

#   # it "Takes order, places order and triggers automated text, returns confirmed message for 30 mins" do
#   #   my_order = Order.new("Adam", "07584573146")
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Egg Fried Rice" => 5.00}))
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Chow Mein" => 6.00}))
#   #   allow(my_order).to receive(:place_order).and_return("Message sent => Thank you. Your order has been placed and will be ready in 30 mins")
#   #   expect(my_order.place_order).to eq "Message sent => Thank you. Your order has been placed and will be ready in 30 mins"
#   # end

#   # # NEED TO INVESTIGATE IF DOUBLES BEING USED CORRECTLY

#   # it "Takes order, places order and triggers automated text, returns confirmed message for 45 mins" do
#   #   my_order = Order.new("Adam", "07584573146")
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Egg Fried Rice" => 5.00}))
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Chow Mein" => 6.00}))
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Egg Fried Rice" => 5.00}))
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Chow Mein" => 6.00}))
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Egg Fried Rice" => 5.00}))
#   #   my_order.add(double(:fake_menu_choice, list_choice: {"Chow Mein" => 6.00}))
#   #   allow(my_order).to receive(:place_order).and_return("Message sent => Thank you. Your order has been placed and will be ready in 45 mins")
#   #   expect(my_order.place_order).to eq "Message sent => Thank you. Your order has been placed and will be ready in 45 mins"
#   # end
# end