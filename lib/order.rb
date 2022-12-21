class Order
  def initialize(name, phone_number)
    @name = name
    @phone_number = phone_number
    @order = []
    @order_placed = false
  end

  def add(item)
    @order << item.list_choice
  end

  def read_back
    @order.empty? ? "Your order is empty" : @order
  end

  def place_order
    @order_placed = true
  end

  def print_receipt
    @order_placed ? @order : "Your order has not been placed yet"
  end
end