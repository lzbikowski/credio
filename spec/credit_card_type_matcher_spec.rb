require 'spec_helper.rb'

describe Credio::Matchers::CreditCardTypeMatcher do
  before :each do
    #empty
  end
  
  it "creates CreditCard type AMEX" do
    Credio::Matchers::CreditCardTypeMatcher.type('343451234512345').downcase.should eq('amex')
  end 

  it "creates CreditCard type Discover" do
    Credio::Matchers::CreditCardTypeMatcher.type('6011512345123451').downcase.should eq('discover')
  end 

  it "creates CreditCard type MasterCard" do
    Credio::Matchers::CreditCardTypeMatcher.type('5134512345123451').downcase.should eq('mastercard')
  end 

  it "creates CreditCard type VISA" do
     Credio::Matchers::CreditCardTypeMatcher.type('4434512345123').downcase.should eq('visa')
  end 


end