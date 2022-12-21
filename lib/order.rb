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
    if @order.empty?
      "You have not added any items to your order"
    elsif @order.length < 6 
      @order_placed = true
      Text.send_text_30_min_wait(@name, @phone_number)
    else
      @order_placed = true
      Text.send_text_45_min_wait(@name, @phone_number)
    end
  end

  def print_receipt
    @order_placed ? @order : "Your order has not been placed yet"
  end
end