require 'test/unit'
$: <<  File.join(File.expand_path(File.dirname(__FILE__)), '../../lib')
require "credio"

class LuhnValidatorTest < Test::Unit::TestCase
    def setup
    end
    
    # check luhn validator number
    def test_visa_card_valid
        assert(Credio::Validators::LuhnValidator::valid?('4408041234567893'), 'Incorrect validation for VISA 4408 0412 3456 7893')
    end
    
    # check luhn validator number
    def test_visa_card_invalid
        assert(Credio::Validators::LuhnValidator::valid?('4417123456789112'), 'Incorrect validation for VISA 4417 1234 5678 9112')
    end
end