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
  def initialize(choice)
    # takes user choice from menu
  end 

  def menu_item
    # stores menu name is string and price as value in hash
  end

  def list_choice
    # returns item choice as key value pair from menu
  end

end

class Order
  def initialise(name)
    # name for order
    # phone number for order
    # instance of order to store items
    # order_placed = false
  end

  def add_item(item_name_as_string)
    # takes a string
    # calls list_choice on instance to get K V pair
    # Adds it to order list 
    # no output
  end

  def read_back
    # returns the items without price
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

class Text()
  def send_text
    # this is called when the order is placed
    # sends @name + Time.now() + 30 mins to recipient < 6 items
    # sends @name + Time.now() + 45 mins to recipient >= 6 items
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# Integration Tests
choice_1 = Menu.new("Egg Fried Rice")
my_order = Order.new("Adam", "07584573145")
my_order.add(choice_1)
my_order.read_back # => "Egg Fried Rice"=>4.0

choice_1 = Menu.new("Egg Fried Rice")
my_order = Order.new("Adam", "07584573145")
my_order.read_back # => "Your order is empty"

choice_1 = Menu.new("Egg Fried Rice")
choice_2 = Menu.new("Prawn Crackers")
my_order = Order.new("Adam", "07584573145")



order_message = Text.new(my_order)



my_order.add(choice_1)
my_order.add(choice_2)
my_order.place_order # => order_placed = true & send_text "Thanks Adam, your order will arrive at 19:30"
my_order.print_receipt # => "egg fried rice" => £5, "prawn crackers" => £2 place has to be == true to be able to print receipt 

choice_1 = Menu.new("Egg Fried Rice")
choice_2 = Menu.new("Prawn Crackers")
choice_3 = Menu.new("Egg Fried Rice")
choice_4 = Menu.new("Prawn Crackers")
choice_5 = Menu.new("Egg Fried Rice")
choice_6 = Menu.new("Prawn Crackers")
my_order = Order.new("Adam", "07584573145")
my_order.add(choice_1)
my_order.add(choice_2)
my_order.add(choice_3)
my_order.add(choice_4)
my_order.add(choice_5)
my_order.add(choice_6)
my_order.place_order # =>  => order_placed = true & send_text "Thanks Adam, your order will arrive at 19:45"
my_order.print_receipt # => "egg fried rice" => £5, "prawn crackers" => £2 place has to be == true to be able to print receipt 

choice_1 = Menu.new("Egg Fried Rice")
my_order = Order.new("Adam", "07584573145")
my_order.place_order # => "You have not added any items to your order"

choice_1 = Menu.new("Egg Fried Rice")
my_order = Order.new("Adam", "07584573145")
my_order.print_receipt # => "You have not placed your order yet"

# Menu Tests

choice_1 = Menu.new("Egg Fried Rice")
my_menu.list_menu # => {"Egg fried rice" => £5, "chow mein" => "£6, "prawn crackers" => £2}

choice_1 = Menu.new("Egg Fried Rice")
choice_1.list_choice # => "Egg Fried Rice" => £5

choice_1 = Menu.new("Chicken Nuggets")
choice_1.list_choice # => "That is not on the menu"
# Order Tests - Mock Tests

my_order = Order.new("Adam", "07584573145")
my_order.add(double(:fake_menu_choice, list_choice: "Egg Fried Rice": 5.00))
my_order.read_back # => double

my_order = Order.new("Adam", "07584573145")
my_order.read_back # => "Your order is empty"

menu = double
text = double
my_order = Order.new("Adam", "07584573145")
my_order.add(double(:fake_menu_choice, list_choice: "Egg Fried Rice": 5.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.place_order # => order_placed = true & send_text "Thanks Adam, your order will arrive at 19:30"
my_order.print_receipt # => "egg fried rice" => £5, "chow mein" => £6

my_order = Order.new("Adam", "07584573145")
my_order.print_receipt # => You have not placed an order

# Texting Test

text = text.new(:fake_order, name: "Adam", phone_number: 07584573145)
my_order.add(double(:fake_menu_choice, list_choice: "Egg Fried Rice": 5.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.send_text # => Your order will be ready in 30 mins

my_order = Order.new("Adam", "07584573145")
my_order.add(double(:fake_menu_choice, list_choice: "Egg Fried Rice": 5.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.add(double(:fake_menu_choice, list_choice: "Chow Mein": 6.00))
my_order.send_text # => Your order will be ready in 45 mins
```

_Encode each example as a test. You can add to the above list as you go._


