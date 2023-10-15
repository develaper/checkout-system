## Objective

Build an application responding to these needs. 

By application, we mean:
- It has a UI, where the user is able to add products to a cart and compute the total price (it can be a simple CLI)
- It is usable while remaining as simple as possible
- It is readable
- It is maintainable
- It is easily extendable

## Technical requirements

* Ruby version: 2.6.5

## Running the tests

For running the tests provided, you will need the Minitest gem. Open a
terminal window and run the following command to install minitest:

    gem install minitest
Or:
    bundle install

If you would like color output, you can `require 'minitest/pride'` in
the test file, or note the alternative instruction, below, for running
the test file.

In order to run the test, you can run the test file from the test directory. Running the following command:
    ruby shop_test.rb

Or from the root folder running:
    rake test
