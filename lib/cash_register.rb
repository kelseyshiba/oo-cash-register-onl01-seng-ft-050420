class CashRegister
  attr_accessor :total, :discount
  
  @@items = []
  
  def initialize(total = 0, discount = 20)
    @total = total
    @discount = discount
  end

  def apply_discount
  end

  def add_item(title, price, quantity = 0)
    @total = price + self.total
  end
  
  def total
    @total
  end
  
  def items
  end

  def void_last_transaction
  end



end
