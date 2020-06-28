require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Paul","e-commerce",42)
m2 = Manager.new("Andrea","CX",32)
# e1 = Employee.new("Dalia")
# e2 = Employee.new("Kim")

# (name,salary,manager)
e1 = Employee.new("Dalia",50_000,m2)
e2 = Employee.new("Kim",35_000,m2)
e3 = Employee.new("cameille",70_000,m1)
e4 = Employee.new("jocelyn",80_000,m1)
binding.pry
puts "done"
