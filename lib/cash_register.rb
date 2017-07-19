class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total+= (price * quantity)
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    unless self.discount == 0
      self.total = total - total * (discount * 0.01)
      return "After the discount, the total comes to $#{total.to_i}."
    end
    return "There is no discount to apply."
  end


  def void_last_transaction
    self.total = 0
  end

end
