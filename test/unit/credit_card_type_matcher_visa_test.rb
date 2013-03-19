require 'test/unit'
$: <<  File.join(File.expand_path(File.dirname(__FILE__)), '../../lib')
require "credio"

class CreditCardTypeMatcherVisaTest < Test::Unit::TestCase
    def setup
    end
    
    # check visa number
    def test_visa_card_41
        assert_equal('visa', Credio::Matchers::CreditCardTypeMatcher::type('4111111111111111').downcase, 
          'Incorrect number for Visa length 16 stargin from 41')
    end
    
    def test_visa_card_invalid_length
        assert_not_equal('visa', Credio::Matchers::CreditCardTypeMatcher::type('41111111111113').downcase, 
          'Invalid length for visa')
    end

    def test_visa_card_40
        assert_equal('visa', Credio::Matchers::CreditCardTypeMatcher::type('4012888888881881').downcase, 
          'Incorrect number for Visa length 16 stargin from 40')
    end

    # check visa number
    def test_visa_card
        assert_equal('visa', Credio::Matchers::CreditCardTypeMatcher::type('4111111111111111').downcase, 
          'Incorrect number for Visa')
    end    

    def test_visa_card_invalid_beginning
        assert_not_equal('visa', Credio::Matchers::CreditCardTypeMatcher::type('11111111111113').downcase, 
          'Invalid length for visa')
    end

  
end