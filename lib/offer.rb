require './lib/shop'

class Offer
  def self.buy_x_get_y(items, x, y, item)
    (items.count(item) / x) * (x - y) * -Shop.item_cost(item)
  end
  def self.buy_x_get_y_percent(items, x, y, item)
    if items.count(item) >= x
       discount = (-Shop.item_cost(item).to_f / 10) * items.count(item)
    end
  end
end