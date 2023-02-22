require "pstore"
require TTY
store = PStore.new("data.pstore")

table = TTY::Table.new(["header1","header2"], [["a1", "a2"], ["b1", "b2"]])

myItems=[
{:name=>"item1",:color=>"red",:price=>"5.00",:rating=>"5"},
{:name=>"item2",:color=>"blue",:price=>"55.00",:rating=>"10"},
{:name=>"item3",color:"purple",price:"3.00",rating:"3"},
]

#CRUD ITEMS
puts "Please enter [C]reate, [R]ead, [U]pate or [D]elete depending on your needs:"
input= gets.chomp

#Create(This part is working at a basic level)
if input == "C"
  puts "user entered #{input}"
  puts "Please enter item name:"
  name=gets.chomp
  puts "Please enter item color:"
  color=gets.chomp
  puts "Please enter item price:"
  price=gets.chomp
  puts "Please enter item rating:"
  rating=gets.chomp

  myItems<< {:name=>name,:color=>color,:price=>price,:rating=>rating}
end
#Read ################################
if input == "R"#This part is working
  puts "user entered #{input}"
  puts  "Puts please enter the name of the item you want to read: "
  item_name=gets.chomp
  myItems.each do|name|
  if name[:name] == item_name
  
  puts "Here is the item you requested information on:"
  puts "Item Name: #{name[:name]}"
  puts "Item Color: #{name[:color]}" 
  puts "Item Price: #{name[:price]}" 
  puts "Item Ranking: #{name[:rating]}" 
  end
  end
end
#Update #############################
if input == "U"
  puts  "Puts please enter the name of the item you want to update(for now you need to update color, price, rating): "
  item_name=gets.chomp
  puts "Please enter item color to update:"
  new_color=gets.chomp
  puts "Please enter item price to update:"
  new_price=gets.chomp
  puts "Please enter item rating to update:"
  new_rating=gets.chomp

  myItems.each do|name|
    if name[:name] == item_name
    
    puts "We are updating #{name[:name]} from: "
    puts "Item Name: #{name[:name]}"
    puts "Item Color: #{name[:color]}" 
    puts "Item Price: #{name[:price]}" 
    puts "Item Ranking: #{name[:rating]}" 
    puts "------------------------------"
    name[:color]=new_color
    name[:price]=new_price
    name[:rating]=new_rating

    puts "to this: "
    puts "Item Name: #{name[:name]}"
    puts "Item Color: #{name[:color]}" 
    puts "Item Price: #{name[:price]}" 
    puts "Item Ranking: #{name[:rating]}"
    puts "-------------------------------" 
    end
    
    end

end
#Delete(This part is working at a basic level)
if input == "D"
  puts "user entered #{input}"
  puts "Please enter the name of the item you would like to delete:"
  item_to_delete=gets.chomp
  #Iterate the array searching for the matching value of the "name key" and then delete it
  myItems.delete_if { |hash| hash[:name] == item_to_delete }
end

##########################################################################################
puts "Here is the full item list: #{myItems}" 
#Writing to a data store using pstore:Here I am adding my full array
store.transaction do
  store[:myItems] = myItems 
end

#Reading Data from pstore-This reads the full array from pstore
myItem0 = store.transaction { store[:myItems] }
puts "MyItem0 read from data.pstore #{myItem0}"

#puts table.render(:ascii)