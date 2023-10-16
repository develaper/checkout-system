require './lib/shop'
require './lib/offer'

class Till
  # Params: Array of Strings
  # Returns Float
  #
  def self.total_cost(items)
    (subtotal_cost(items) + total_discount(items)).round(2)
  end

  # Params: Array of Strings
  # Returns Float
  #
  def self.subtotal_cost(items)
    items.map{|item| Shop.item_cost(item)}.sum
  end
  
  # Params: Array of Strings
  # Returns Float
  #
  def self.total_discount(items)
    Offer.buy_x_get_y(items, 2, 1, "GR1") +
    Offer.buy_x_get_y_fraction_discount(items, 3, 10, "SR1") +
    Offer.buy_x_get_y_fraction_discount(items, 3, 3, "CF1")
  end
end