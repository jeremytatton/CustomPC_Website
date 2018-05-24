#Build an inventory program for a Grocery Store. The program should allow the manager to:

#View Categories of products

#Each category by default should contain 5 items.

#View an individual product

#Change the quantity of a product. Add products to any category. A product should be an object created from a class. Each category should be its own type. Each product should have the base properties of:

#name, quantity, serial number, cost, sell price

#Other features to think about: Add "sell by" dates to each product. Have it so the manager can see how many items need to be sold within the week. List it out by product. Determine how much each product cost the store to purchase, each product could bring in in revenue, and each product would make in profit

#Create the ability to put an item on sale, or take an item off sale. Determine the sale discount.

class Product
  attr_reader :name, :quantity, :serial_number, :cost, :sell_price

  def initialize(name, quantity, serial_number, cost, sell_price)
    @name = name
    @quantity = quantity
    @serial_number = serial_number
    @cost = cost
    @sell_price = sell_price
  end

  def print_details
    puts "#{@name} Details"
    puts "Quantity: #{@quantity}"
    puts "Serial Number: #{@serial_number}"
    puts "Cost: #{@cost}"
    puts "Sell Price: #{@sell_price}"
  end
end

milk = Product.new('Milk', 50, 999, 0.50, 1.49)
yogurt = Product.new('Yogurt', 40, 989, 0.15, 1.00)
chicken_nuggets = Product.new('Chicken Nuggets', 150, 689, 0.50, 4.00)
pizza = Product.new('Pizza', 200, 687, 0.40, 4.25)
salami = Product.new('Salami', 350, 321, 0.05, 2.50)
apples = Product.new('Apples', 200, 420, 0.10, 1.00)
watermelon = Product.new('Watermelon', 500, 421, 0.20, 3.00)

inventory_hash =
{'Deli' =>[salami],
 'Dairy' => [milk],
 'Frozen' => [chicken_nuggets],
 'Produce' => [apples]}

inventory_hash['Dairy'].push(yogurt)
inventory_hash['Frozen'].push(pizza)
inventory_hash['Produce'].push(watermelon)

def print_menu
puts "==============================="
puts "1. View Categories of Products"
puts "2. View Individual Products"
puts "3. Add a new Product"
puts "4. Adjust Inventory"
puts "=========Leave Program========="
end

#MainLoop
loop do
  print_menu
  selection = gets.chomp.to_i
  case selection
  when 0 then break

  when 1 then puts inventory_hash.keys

  when 2 then
    puts "Which category is the product in?"
    category_selection = gets.chomp
    if inventory_hash.has_key? category_selection
      puts "Which #{category_selection} Product?"
      inventory_hash[category_selection].each do |product|
        puts product.name
      end
      product_selection = gets.chomp
      selected_product = inventory_hash[category_selection].find {|p| p.name == product_selection}
      unless selected_product.nil?
        seleceted_product.print_details
      else
        puts "Couldn't find product #{product_selection}"
      end
    else
      puts "Unrecognized Category: #{category_selection}"
    end

  when 3 then



  when 4 then
  else
    puts "Unrecognized Command"
  end


break
end
