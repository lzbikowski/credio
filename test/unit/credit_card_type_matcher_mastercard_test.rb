require 'test/unit'
$: <<  File.join(File.expand_path(File.dirname(__FILE__)), '../../lib')
require "credio"

class CreditCardTypeMatcherMastercardTest < Test::Unit::TestCase
    def setup
    end
    
    # check mastercard number
    def test_mastercard_card_51
        assert_equal('mastercard', Credio::Matchers::CreditCardTypeMatcher::type('5105105105105100').downcase, 
          'Incorrect number for mastercard length 16 stargin from 51')
    end
    
    def test_mastercard_card_52
        assert_equal('mastercard', Credio::Matchers::CreditCardTypeMatcher::type('5205105105105100').downcase, 
          'Incorrect number for mastercard length 16 stargin from 52')
    end    
    
    def test_mastercard_card_53
        assert_equal('mastercard', Credio::Matchers::CreditCardTypeMatcher::type('5305105105105100').downcase, 
          'Incorrect number for mastercard length 16 stargin from 53')
    end    

    def test_mastercard_card_54
        assert_equal('mastercard', Credio::Matchers::CreditCardTypeMatcher::type('5405105105105100').downcase, 
          'Incorrect number for mastercard length 16 stargin from 54')
    end    

    def test_mastercard_card_55
        assert_equal('mastercard', Credio::Matchers::CreditCardTypeMatcher::type('5505105105105100').downcase, 
          'Incorrect number for mastercard length 16 stargin from 55')
    end    
    
    def test_mastercard_card_invalid_length
        assert_not_equal('mastercard', Credio::Matchers::CreditCardTypeMatcher::type('51111111111113').downcase, 
          'Invalid length for mastercard')
    end
  
end