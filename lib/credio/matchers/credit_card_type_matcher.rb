module Credio
  module Matchers
    class CreditCardTypeMatcher
      private
        PATTERNS = {
          :VISA => /^4[0-9]{12}(?:[0-9]{3})?$/,
          :AMEX => /^3[47][0-9]{13}$/,
          :MasterCard => /^5[1-5][0-9]{14}$/,
          :Discover => /^6(?:011|5[0-9]{2})[0-9]{12}$/,
          :Unknown => /^.*$/ 
        }      
      
      public
        def self.type(number) 
          CreditCardTypeMatcher::PATTERNS.each { |key, value|
            return key.to_s if number =~ value
          }
          return :Unknown
        end
     
     
    end
  end
end