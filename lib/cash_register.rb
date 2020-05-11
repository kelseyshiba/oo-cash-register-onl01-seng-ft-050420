require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def apply_discount
    if discount > 0
      @total = self.total * ((100.0-discount.to_f)/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  # = discount.to_f/100 * self.total

  def add_item(item, price, quantity = 1)
    @total = price*quantity + self.total
    quantity.times do 
      @items << item
    end
    @price = price
  end
  
  def total
    @total
  end
  
  def items
    @items
  end

  def void_last_transaction
    if @items.length == 0
      @total = 0
      binding.pry
    else
      @total = self.total - self.price
    end
  end



end
