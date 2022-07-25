class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, qty = 1)
    self.total += (price * qty)
  end

  def apply_discount
    if self.discount != 0
      percentage = (100.0 - self.discount.to_f) / 100
      self.total = (self.total * percentage).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

end
