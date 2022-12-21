class Menu
  @@menu = {"Egg Fried Rice" => 4.00, "Chow Mein" => 5.00, "Prawn Crackers" => 2.00, "Spicy Beef" => 6.50, "Spare Ribs" => 5.50}

  def initialize(choice)
    @choice = choice
  end

  def list_menu
    return @@menu
  end

  def list_choice
    {@choice => @@menu.fetch(@choice)}
  end
end