#!/usr/bin/env ruby
$: <<  File.join(File.expand_path(File.dirname(__FILE__)), '../lib')
require "credio"

credit_card_array = []

STDIN.each_line do |str|
  str.chomp!
  break if str.empty?
  credit_card_array << str
end


credit_card_array.each {|number|
  credit_card = Credio::Models::CreditCard.new number
#  puts "#{credit_card.type}: #{credit_card.number} #{credit_card.valid ? "valid" : "invalid" }"
  printf("%-29s(%s)\n", credit_card.type+": "+credit_card.number, credit_card.valid ? "valid" : "invalid");
}

