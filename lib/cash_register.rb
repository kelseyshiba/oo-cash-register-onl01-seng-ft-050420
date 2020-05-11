require 'pry'
class CashRegister
  attr_accessor :total, :discount,
  
  
  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end

  def apply_discount
    if discount > 0
      @total = self.total * discount.to_f/100
      puts "After the discount, the total comes to $#{@total}."
    else
      puts "There is no discount to apply."
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
