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
  it "creates CreditCard type VISA with valid number" do
    credit_card = Credio::Models::CreditCard.new '4111111111111111'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type VISA with INvalid number" do
    credit_card = Credio::Models::CreditCard.new '4111111111111'  
    credit_card.valid.should eq(false)
  end 

  it "creates CreditCard type VISA with valid number" do
    credit_card = Credio::Models::CreditCard.new '4012888888881881'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type AMEX with valid number" do
    credit_card = Credio::Models::CreditCard.new '378282246310005'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type Discover with valid number" do
    credit_card = Credio::Models::CreditCard.new '6011111111111117'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type MasterCard with valid number" do
    credit_card = Credio::Models::CreditCard.new '5105105105105100'  
    credit_card.valid.should eq(true)
  end 
  
  it "creates CreditCard type MasterCard with INvalid number" do
    credit_card = Credio::Models::CreditCard.new '5105105105105106'  
    credit_card.valid.should eq(false)
  end 
  
  it "creates CreditCard type Unknown with INvalid number" do
    credit_card = Credio::Models::CreditCard.new '9111111111111111'  
    credit_card.valid.should eq(false)
  end 
  
  # format variations
  it "creates valid CreditCard from number with white-spaces" do
    credit_card = Credio::Models::CreditCard.new '5105 1051 0510 5100'  
    credit_card.valid.should eq(true)
  end

  it "creates unknown CreditCard from number with incorrect signs" do # for validation letters are treated as 0, so neutral for luhn   
    credit_card = Credio::Models::CreditCard.new '5105 1051 0510 510f'  
    credit_card.type.downcase.should eq('unknown')
  end

end