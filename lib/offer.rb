class Offer
  def self.buy_x_get_y(items, x, y, item)
    (items.count(item) / x) * (x - y) * -Shop.item_cost(item)
  end
end