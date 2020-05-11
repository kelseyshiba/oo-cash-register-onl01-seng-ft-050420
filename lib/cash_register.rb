require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def apply_discount
    @total = self.total * discount.to_f/100
  end
  # = discount.to_f/100 * self.total

  def add_item(title, price, quantity = 1)
    @total = price*quantity + self.total
    @@items << title
  end
  
  def total
    @total
  end
  
  def items
    @@items
  end

  def void_last_transaction
  end



end
