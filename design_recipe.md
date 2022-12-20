# Takeaway Design Recipe

## 1. Describe the Problem

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

As a customer
So that I am reassured that my order will be delivered on time
I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered.



## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class Menu
  def menu_item
    # stores menu name is string and price as value in hash
  end
end

class Order
  def initialise(name)
    # name for order
    # instance of order to store items
    # order_placed = false
  end

  def add_item(item_name_as_string)
    # takes a string
    # searches through menu hash
    # adds name and price to itemised receipt stored as instance var
  end

  def read_back
    # returns the keys of all items on order
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

class Text
  def send_text
    # this is called when the order is placed
    # sends @name + Time.now() + 30 mins to recipient
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# Integration Tests

menu = Menu.new
my_order = Order.new("Adam")
my_order.add("egg fried rice")
my_order.add("chow mein")
my_order.add("prawn crackers")
my_order.place # => order_placed = true & send_text "Thanks Adam, your order will arrive at 19:30"
my_order.print_receipt # => "egg fried rice" => £5, "chow mein" => £6, "prawn crackers" => £2

menu = Menu.new
my_order = Order.new("Adam")
my_order.add("egg fried rice")
my_order.add("chow mein")
my_order.add("prawn crackers")
my_order.read_back # => "egg fried rice, chow mein, prawn crackers"

menu = Menu.new
my_order = Order.new("Adam")
my_order.read_back # => "Your order is empty"

menu = Menu.new
my_order = Order.new("Adam")
my_order.add("egg fried rice")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.place # =>  => order_placed = true & send_text "Thanks Adam, your order will arrive at 19:45"

menu = Menu.new
my_order = Order.new("Adam")
my_order.place # => "You have not added any items to your order"

menu = Menu.new
my_order = Order.new("Adam")
my_order.print_receipt # => "You have not placed your order yet"

# Menu Tests

my_menu = Menu.new
my_menu.list_menu # => {"Egg fried rice" => £5, "chow mein" => "£6, "prawn crackers" => £2}

# Order Tests - Mock Tests

my_menu = double
my_order = Order.new("Adam")
my_order.add("Prawn crackers")
my_order.read_back # => "Prawn crackers"

my_menu = double
my_order = Order.new("Adam")
my_order.read_back # => "Your order is empty"

menu = double
text = double
my_order = Order.new("Adam")
my_order.add("egg fried rice")
my_order.add("chow mein")
my_order.place # => order_placed = true & send_text "Thanks Adam, your order will arrive at 19:30"
my_order.print_receipt # => "egg fried rice" => £5, "chow mein" => £6

menu = double
text = double
my_order = Order.new("Adam")
my_order.print_receipt # => Your order is empty

# Texting Test

text = text.new
menu = double
my_order = double
my_order.add("Egg fried rice")
my_order.add("chow mein")
my_order.send_text # => Your order will be ready in 30 mins

text = text.new
menu = double
my_order = double
my_order.add("Egg fried rice")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.add("chow mein")
my_order.send_text # => Your order will be ready in 45 mins

```

_Encode each example as a test. You can add to the above list as you go._


