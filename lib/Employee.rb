class Employee
    @@all = []
  attr_reader :name, :salary, :manager,:employee
    def initialize(name,salary,manager)
       @name = name 
       @salary = salary 
       @manager = manager
       @@all << self
       
    end

    def self.all
     
        @@all
    end

    

    def self.paid_over(salary)
        @@all.select do |employee| 
            employee.salary > salary
            #binding.pry
        end
      end

    def self.find_by_department(dept)
        Manager.all.find do |manager|
         if manager.department == dept
            manager.employees[0].name
         end
        end
    end

      def tax_bracket
        @@all.select do |other_employee|
            other_employee.salary.between?((self.salary - 1000),(self.salary + 1000))
          end
        end

end
