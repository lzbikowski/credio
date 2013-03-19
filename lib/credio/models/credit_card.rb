module Credio
  module Models
    class CreditCard
      attr_reader :number, :type, :valid 
              
      def initialize number
          @number = number.delete(' ') # translate to no-white-spaces format
          @type = Credio::Matchers::CreditCardTypeMatcher.type(@number)
          @valid = Credio::Validators::LuhnValidator.valid?(@number)
      end
                  
    end
  end 
end
