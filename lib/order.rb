# class Order
#   def initialize(name, phone_number)
#     @name = name
#     @phone_number = phone_number
#     @user_order = []
#     @order_placed = false
#   end

#   def add(item)
#     @user_order << item
#   end

#   def read_back
#     @user_order.empty? ? "Your order is currently empty. Please choose some items" : @user_order
#   end

#   def print_receipt
#     # search menu hash for each item
#     # add key value pair to user receipt
#     # return user receipt
#     user_receipt = {}
#     if @order_placed == true
#       @user_order.each do |item|
#         if list_menu.key?(item) == true
#           user_receipt.merge!(list_menu.collect{|food, price| price => food})
#         else
#           ""
#         end
#       end
#     end
#   end

#   def place_order
#     # when this is called automated text is sent
#     # sets order placed to true
#     @order_placed = true
#   end
# end