require 'minitest/autorun'
require './lib/offer'

class TestOffer < Minitest::Test
  def test_buy_x_get_y_with_2_for_1_green_tea_with_minimal_list
    items = ["GR1", "GR1", "GR1"]
    assert_equal -3.11, Offer.buy_x_get_y(items, 2, 1, "GR1")
  end
  def test_buy_x_get_y_with_2_for_1_green_tea_with_more_complex_list
    items = ["GR1", "SR1", "CF1", "GR1"]
    assert_equal -3.11, Offer.buy_x_get_y(items, 2, 1, "GR1")
  end
  def test_buy_x_get_y_fraction_discount_with_10_for_3_strawberries_with_minimal_list
    items = ["SR1", "SR1", "SR1"]
    assert_equal -1.50, Offer.buy_x_get_y_fraction_discount(items, 3, 10, "SR1")
  end
  def test_buy_x_get_y_fraction_discount_with_10_for_3_strawberries_with_more_complex_list
    items = ["SR1", "SR1","GR1", "SR1", "CF1"]
    assert_equal -1.50, Offer.buy_x_get_y_fraction_discount(items, 3, 10, "SR1")
  end
  def test_buy_x_get_y_fraction_discount_with_3_for_3_coffees_with_minimal_list
    items = ["CF1", "CF1", "CF1"]
    assert_equal -11.23, Offer.buy_x_get_y_fraction_discount(items, 3, 3, "CF1")
  end
  def test_buy_x_get_y_fraction_discount_with_3_for_3_coffees_with_more_complex_list
    items = ["CF1", "SR1","GR1", "CF1", "CF1"]
    assert_equal -11.23, Offer.buy_x_get_y_fraction_discount(items, 3, 3, "CF1")
  end
end