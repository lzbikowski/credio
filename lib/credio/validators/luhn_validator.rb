module Credio
  module Validators
    class LuhnValidator
      def self.valid?(number)
        sum = 0
        # reverse, convert to chars and loop w/ each 2 (for odd numbers last even is nil => 0)
        number.reverse.chars.each_slice(2) { |odd, even| 
          sum += odd.to_i         
          even_doubled = even.to_i*2          
          sum += (even_doubled>9) ? (even_doubled%10) + 1 : even_doubled 
        }
        sum%10==0
      end
    end
  end
end