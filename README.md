# Credio

Credio gem provides simple tool for credit card numbers verification.


## Installation

Add this line to your application's Gemfile:

    gem 'credio'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install credio

## Usage

CreditCard gets number creating CreditCard object. 

During intialization it performs card validation::

1. Match to the following pattern


+============+=============+===============+
| Card Type  | Begins With | Number Length |
+============+=============+===============+
| AMEX       | 34 or 37    | 15            |
+------------+-------------+---------------+
| Discover   | 6011        | 16            |
+------------+-------------+---------------+
| MasterCard | 51-55       | 16            |
+------------+-------------+---------------+
| Visa       | 4           | 13 or 16      |
+------------+-------------+---------------+

all others are marked as unknown.
2. Luhn formula verification.



You can execute script with sample data using the console script: 
$ bin/credio.rb < sample/sample.txt

script might be also tested when executed with no strem
(numbers one-per-line, empty line is EOF)
 
## rake tasks
default task is spec
execute:
$ rake

for running rspec tests.


execute: 
$ rake test
for unit tests



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## TODO:
CreditCard model is incomplete.