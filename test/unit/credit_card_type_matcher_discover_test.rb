require 'test/unit'
$: <<  File.join(File.expand_path(File.dirname(__FILE__)), '../../lib')
require "credio"

class CreditCardTypeMatcherDiscoverTest < Test::Unit::TestCase
    def test_discover_card_6011
        assert_equal('discover', Credio::Matchers::CreditCardTypeMatcher::type('6011111111111117').downcase, 
          'Incorrect number for discover length 15 starting from 34')
    end
    
    def test_discover_card_invalid_length_37
        assert_not_equal('discover', Credio::Matchers::CreditCardTypeMatcher::type('60111111111117').downcase, 
          'Invalid length for discover (starts 37)')
    end
  
end