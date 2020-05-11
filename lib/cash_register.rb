class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total = 0, *discount)
    @total = total
    @discount = discount
  end

  def apply_discount
  end

  def add_item(title, price, quantity = 0)
  end
  
  def total
  end
  
  def items
  end

  def void_last_transaction
  end



end
