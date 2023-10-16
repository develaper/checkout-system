require 'minitest/autorun'
require './lib/checkout'

class TestCheckout < Minitest::Test
  def test_command
    assert_output("19.34€\n") {
      puts `./lib/checkout.rb GR1 SR1 CF1`
    }
  end   
end