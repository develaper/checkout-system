#!/usr/bin/env ruby
require './lib/cart'
require './lib/till'

if __FILE__ == $PROGRAM_NAME
    cart = Cart.new
    cart.add_items(ARGV)
    cost = Till.total_cost(cart.items)
    puts "#{cost}€\n"
end