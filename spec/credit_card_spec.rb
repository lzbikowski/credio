require 'spec_helper.rb'

describe Credio::Models::CreditCard do
  before :each do
  end
  
  it "creates CreditCard type AMEX" do
    credit_card = Credio::Models::CreditCard.new '343451234512345'  
    credit_card.type.should eq('AMEX')
  end 

  it "creates CreditCard type Discover" do
    credit_card = Credio::Models::CreditCard.new '6011512345123451'  
    credit_card.type.should eq('Discover')
  end 

  it "creates CreditCard type MasterCard" do
    credit_card = Credio::Models::CreditCard.new '5134512345123451'  
    credit_card.type.should eq('MasterCard')
  end 

  it "creates CreditCard type VISA" do
    credit_card = Credio::Models::CreditCard.new '4434512345123'  
    credit_card.type.should eq('VISA')
  end 

  # luhn validation
  it "creates CreditCard type VISA with correct number" do
    credit_card = Credio::Models::CreditCard.new '4111111111111111'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type VISA with INcorrect number" do
    credit_card = Credio::Models::CreditCard.new '4111111111111'  
    credit_card.valid.should eq(false)
  end 

  it "creates CreditCard type VISA with correct number" do
    credit_card = Credio::Models::CreditCard.new '4012888888881881'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type AMEX with correct number" do
    credit_card = Credio::Models::CreditCard.new '378282246310005'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type Discover with correct number" do
    credit_card = Credio::Models::CreditCard.new '6011111111111117'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type MasterCard with INcorrect number" do
    credit_card = Credio::Models::CreditCard.new '5105105105105100'  
    credit_card.valid.should eq(false)
  end 
  
  it "creates CreditCard type MasterCard with INcorrect number" do
    credit_card = Credio::Models::CreditCard.new '5105105105105106'  
    credit_card.valid.should eq(false)
  end 
  
  it "creates CreditCard type Unknown with INcorrect number" do
    credit_card = Credio::Models::CreditCard.new '9111111111111111'  
    credit_card.valid.should eq(false)
  end 

end