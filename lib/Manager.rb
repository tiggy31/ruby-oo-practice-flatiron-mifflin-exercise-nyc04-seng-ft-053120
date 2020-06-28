class Manager

   attr_accessor :name,:department,:age
   @@all = []
   def initialize(name,department,age)
     @name = name
     @department = department 
     @age = age
     @@all  << self
    end

    def self.all

        @@all
       
    end

    def employees
      Employee.all.select do |employee_instance|
        #binding.pry
        employee_instance.manager == self
      end

    end
    def managers
     
        @@all.map do |manager|
            manager
         #binding.pry
          end
        end

        def hire_employee(name,salary)
            
            employee = Employee.new(name,salary)
            @@all << employee
            employee
        end

        def self.all_departments

            self.all.map do |manager_instance|
                manager_instance.department
                #binding.pry
            end
        end


        def self.average_age

            @@all.map do |manager|
                manager.age
                #binding.pry
              end.inject(:+) / @@all.length.to_f
            end

end


#manager can have many employees but an employee has one manager