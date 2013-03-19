require 'spec_helper.rb'

describe Credio::Models::CreditCard do
  before :each do
  end
  
  it "creates CreditCard type AMEX" do
    @credit_card = Credio::Models::CreditCard.new '343451234512345'  
    @credit_card.type.should eq('AMEX')
  end 

  it "creates CreditCard type Discover" do
    @credit_card = Credio::Models::CreditCard.new '6011512345123451'  
    @credit_card.type.should eq('Discover')
  end 

  it "creates CreditCard type MasterCard" do
    @credit_card = Credio::Models::CreditCard.new '5134512345123451'  
    @credit_card.type.should eq('MasterCard')
  end 

  it "creates CreditCard type VISA" do
    @credit_card = Credio::Models::CreditCard.new '4434512345123'  
    @credit_card.type.should eq('VISA')
  end 


end