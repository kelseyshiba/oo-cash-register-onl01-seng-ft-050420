require 'pry'
class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def apply_discount
    if discount > 0
      @total = discount.to_f/100 * self.total
    end
  end
  #apply_discount = something.apply_discount #

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
