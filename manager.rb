class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    if @active == true
      puts "#{@first_name} #{@last_name} makes #{@salary} a year and is an active employee."
    else
      puts "#{@first_name} #{@last_name} has been terminated."
    end
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
puts "Before Raises:"
employee1.print_info
employee2.print_info

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  
  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
     
    end
  end
  
  def fire_all_employees
    @employees.each do |employee|
    employee.active = false         #need to write the status and change from true to false
    end
  end
end
#end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

manager.give_all_raises
manager.fire_all_employees
puts "After Raises and after being terminated:"
employee1.print_info
employee2.print_info