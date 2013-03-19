module Credio
  module Models
    class CreditCard
      attr_accessor :number, :type
              
      def initialize number
          @number = number
          @type = Credio::Matchers::CreditCardTypeMatcher.type(number)
      end
      
      def validate_number
        
      end
            
    end
  end 
end
