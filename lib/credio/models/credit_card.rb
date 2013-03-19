module Credio
  module Models
    class CreditCard
      attr_accessor :number, :type, :valid 
              
      def initialize number
          @number = number
          @type = Credio::Matchers::CreditCardTypeMatcher.type(number)
          @valid = Credio::Validators::LuhnValidator.valid?(number)
      end
                  
    end
  end 
end
