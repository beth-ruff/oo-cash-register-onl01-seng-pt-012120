class CashRegister
  attr_accessor :items, :total, :discount, :price, :last_transaction

  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount 
  end 
 
  def add_item(title, price, quantity = 1)
      @price = price
      @total += price * quantity
        if quantity > 1 
        counter = 0 
        while counter < quantity
        @items << title 
        counter += 1 
        end
        @total += price * quantity
        @last_transaction = price * quantity
      end 
        
  def apply_discount()
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction()
    @total -= @last_transaction
  end

  def apply_discount
    if @discount > 0
      to_take_off = (price * discount)/100
      @total -= to_take_off
      return "After the discount, the total comes to $#{total}."
    else 
    end
  end

end 