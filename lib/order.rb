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


  # Potentially need to tidy up receipt printing
  def print_receipt
    grand_total = 0
    if @order_placed
      @order.each{|item|
        item.map{|k,v| grand_total += v}
      }
      return "#{@order} Your grand total is £#{grand_total}"
    else
      "Your order has not been placed yet"
    end
  end
end