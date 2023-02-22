
  
class StoreItem
  attr_reader :name, :color, :price, :rating
  attr_writer :name
  def initialize(inputs)
    @name=inputs[:input_name]
    @color=inputs[:input_color]
    @price=inputs[:input_price]
    @rating=inputs[:input_rating]
  end 

  def print_items
    puts "#{name} is #{color} and cost $#{price}"
  end

end

myItem=StoreItem.new(input_name: "item1",input_color:"red",input_price: 99,input_rating:5)
# p myItem.get_name
# p myItem.get_color
# p myItem.get_price
# p myItem.get_rating

myItem.print_items
myItem.name="updated name"
myItem.print_items



