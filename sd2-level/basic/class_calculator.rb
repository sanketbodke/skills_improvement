class ClassCalculator
    def initialize(number = 0)
        @number = number
        @history = []
    end

    def add(value)
        @history << "#{@number} + #{value} = #{@number + value}"
        @number += value
        self
    end
    
    def subtract(value)
        @history << "#{@number} - #{value} = #{@number - value}"
        @number -= value
        self
    end
    
    def multiply(values)
        @history << "#{@number} * #{value} = #{@number * value}"
        @number *= value
        self
    end
    
    def divide(values)
        if value == 0
            puts "Error division by zero"
            return self
        end
        @history << "#{@number} / #{value} = #{@number / value}"  
    end  
    
    def result
        @number
    end
end

task = ClassCalculator.new()
task.add(10)
task.subtract(5)
puts task.result