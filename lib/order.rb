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


  #  NEED TO ADD GRAND TOTAL FUNCTIONALITY
  def print_receipt
    grand_total = 0
    if @order_placed = true
      @order.each do |item|
      return grand_total += item.default
      end
    else
      "Your order has not been placed yet"
    end
    return grand_total
  end
end