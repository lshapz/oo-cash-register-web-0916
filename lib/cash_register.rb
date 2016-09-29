require 'pry'
class CashRegister
  attr_accessor :total, :title, :price, :quantity, :items_array, :price_array
  attr_reader  :discount
  attr_writer

  def initialize(discount = 0)
    @total = 0
    @discount = discount 
    @items_array = []
    @price_array = []
  end 


  def add_item(title, price, quantity = 1)
    @title = title
    @price = price
    @quantity = quantity 
    @total += (@price * @quantity)
    @quantity.times do |i| 
      @items_array.push(@title)
    end 
    @price_array << @price
  end 

  def apply_discount
    if @discount != 0
      @total = @total * 0.8
      "After the discount, the total comes to $#{@total.to_i}."
    else 
      "There is no discount to apply."
    end 
  end 

  def items
    @items_array
  end 

  def void_last_transaction
    @total -= @price_array.last
  end 

end 

# Pry.start

# poop = CashRegister.new(0, true)
# pee = CashRegister.new(0, nil)

#   binding.pry


# puts "hi"
# # @total = 0
#     #
