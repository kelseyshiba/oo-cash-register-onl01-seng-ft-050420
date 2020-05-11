require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def apply_discount
    @total = discount * self.total
  end

  def add_item(title, price, quantity = 1)
    @total = price*quantity + self.total
  end
  
  def total
    @total
  end
  
  def items
  end

  def void_last_transaction
  end



end
