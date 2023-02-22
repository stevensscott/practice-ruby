# foods=[]
# 5.times do
#   puts "Enter your favorite food:"
#   food=gets.chomp
#   foods<<food
# end
# i=1
# foods.each do |food|
#   puts "#{i}. I love #{food}"
#   i= i +1
# end

# ##Hash #3



# customers=[]
# 2.times do
#   puts "fname"
#   fname= gets.chomp
#   puts "lname"
#   lname=gets.chomp
#   puts "email"
#   email=gets.chomp
#   acct= rand(1234567890..9666667890)
#   customers<< {:name=>fname,:lname=>lname,:email=>email,:acct=>acct}
# end
# index = 0
# while index < customers.length
#   puts "First Name: " + customers[index][:name]
#   puts "Last Name: " + customers[index][:lname]
#   puts "Email: " + customers[index][:email]
#   puts "Account Number: " + customers[index][:acct].to_s
#   index = index + 1
# end

# program=[]

# 2.times do 
# puts "Enter a first name: "
# f_name=gets.chomp

# puts "Enter a last name: "
# l_name=gets.chomp

# puts "Enter an email: "
# email=gets.chomp

# account= (rand(1000000000..2000000000))
#  program<< {:account=>account,:f_name=>f_name, :l_name=>l_name, :email=>email}
# end
# #p program
# i=0
# program.length.times do 
# puts "FIRST NAME: #{program[i][:f_name]}"
# puts "LAST NAME: #{program[i][:l_name]}"
# puts "EMAIL: #{program[i][:email]}"
# puts "ACCOUNT: #{program[i][:account]}"

# i= i+1
# end

classmates = ["Sean", "Derek", "Phil", "Ben"]
while true
  puts "Please enter a student's name:"
  name = gets.chomp
  classmates << name
  i = 0
  if classmates.length.even? == true
    while i < classmates.length
      puts "Group: #{classmates[i]} #{classmates[i + 1]}"
      i += 2
    end
  end
  if classmates.length.even? == false
    while i < classmates.length - 3
      puts "Group: #{classmates[i]} #{classmates[i + 1]}"
      i += 2
    end
    while i <= classmates.length - 3
      puts "Group: #{classmates[i]} #{classmates[i + 1]} #{classmates[i + 2]}"
      break
    end
  end
end

