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
    @user_order
  end
end