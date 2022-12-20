class Order
  def initialize(name, phone_number)
    @name = name
    @phone_number = phone_number
    @user_order = []
  end

  def add(item)
    @user_order << item
  end

  def read_back
    @user_order.empty? ? "Your order is currently empty. Please choose some items" : @user_order
  end

  def print_receipt
    # returns an itemised receipt from instance var
    # Only prints receipt if order is placed
  end

  def place_order
    # when this is called automated text is sent
    # sets order placed to true
  end
end