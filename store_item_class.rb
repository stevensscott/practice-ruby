
  
class StoreItem
  def initialize(input_name,input_color,input_price,input_rating)
    @name=input_name
    @color=input_color
    @price=input_price
    @rating=input_rating 
  end

  def get_name
    @name
  end
  def get_color
    @color
  end
  def get_price
    @price
  end
  def get_rating
    @rating
  end

  def print_items
    puts "#{@name} is #{@color} and cost $#{@price}"
  end

  def set_name=(input_name)
    @name=input_name
  end
  def set_color=(input_color)
    @color=input_color
  end
  def set_price=(input_price)
    @price=input_price
  end
  def set_rating=(input_rating)
    @rating=input_rating
  end
  
end

myItem=StoreItem.new("item1","red",99,5)
# p myItem.get_name
# p myItem.get_color
# p myItem.get_price
# p myItem.get_rating
p myItem.print_items
myItem.set_name= "Updated Item1"
p myItem


