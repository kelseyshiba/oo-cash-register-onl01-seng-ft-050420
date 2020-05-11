require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def apply_discount
      @total = discount.to_f/100 * total
  end

  def add_item(title, price, quantity = 1)
    @total = price*quantity + total
  end
  
  def total
    @total
  end
  
  def items
  end

  def void_last_transaction
  end



end
