# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'credio/version'

Gem::Specification.new do |gem|
  gem.name          = "credio"
  gem.version       = Credio::VERSION
  gem.authors       = ["Luke Zbikowski"]
  gem.email         = ["l.zbikowski@gmail.com"]
  gem.description   = %q{Support for multpile credit cards validation}
  gem.summary       = %q{Validates credit card numbers. Currently support AMEX, Discover, MasterCard and Visa numbers}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rake'
end
