class RPNCalculator
  def initialize
  end
  
  def evaluate(expression)
    new_array = Array.new

    expression.split(" ").each do |item|  
      new_array << item
    end

    index = 0
    while new_array.length > 1

      if new_array[(index)] == "+"
        
        temp = new_array[(index-2)].to_i + new_array[(index-1)].to_i
        new_array[index] = temp
        new_array.delete_at(index-1)
        new_array.delete_at(index-2)
        
        index = 0
      
      elsif new_array[index] == "-"
        
        temp = new_array[(index-2)].to_i - new_array[(index-1)].to_i
        new_array[index] = temp
        new_array.delete_at(index-1)
        new_array.delete_at(index-2)
        
        index = 0
        
      elsif new_array[index] == "*"
        
        temp = new_array[(index-2)].to_i * new_array[(index-1)].to_i
        new_array[index] = temp
        new_array.delete_at(index-1)
        new_array.delete_at(index-2)
        
        index=0
        
      else index += 1
      end
      
    end
    
    puts new_array
  end
  
end

calc = RPNCalculator.new

calc.evaluate('70 10 4 + 5 * -')