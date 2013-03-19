require 'test/unit'
$: <<  File.join(File.expand_path(File.dirname(__FILE__)), '../../lib')
require "credio"

class CreditCardTypeMatcherAmexTest < Test::Unit::TestCase
    def test_amex_card_34
        assert_equal('amex', Credio::Matchers::CreditCardTypeMatcher::type('348282246310005').downcase, 
          'Incorrect number for Amex length 15 starting from 34')
    end
    
    def test_amex_card_37
        assert_equal('amex', Credio::Matchers::CreditCardTypeMatcher::type('378282246310005').downcase, 
          'Incorrect number for Amex length 15 starting from 37')
    end

    def test_amex_card_invalid_length_34
        assert_not_equal('amex', Credio::Matchers::CreditCardTypeMatcher::type('341234567').downcase, 
          'Invalid length for amex starts 34)')
    end

    def test_amex_card_invalid_length_37
        assert_not_equal('amex', Credio::Matchers::CreditCardTypeMatcher::type('371234567').downcase, 
          'Invalid length for amex (starts 37)')
    end
  
end