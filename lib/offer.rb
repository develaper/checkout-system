require './lib/shop'

class Offer
  # Params: Array of Strings,
  # Int, Int, String
  # Returns Float
  #
  def self.buy_x_get_y(items, x, y, item)
    (items.count(item) / x) * (x - y) * -Shop.item_cost(item)
  end
  
  # Params: Array of Strings,
  # Int, Int, String
  # Returns Float
  #
  def self.buy_x_get_y_fraction_discount(items, x, y, item)
    if items.count(item) >= x
       discount = (-Shop.item_cost(item).to_f / y) * items.count(item)
    else
      discount = 0
    end
  end
end