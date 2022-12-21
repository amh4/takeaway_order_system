class Order
  def initialize(name, phone_number)
    @name = name
    @phone_number = phone_number
    @order = []
  end

  def add(item)
    @order << item.list_choice
  end

  def read_back
    @order.empty? ? "Your order is empty" : @order
  end
end