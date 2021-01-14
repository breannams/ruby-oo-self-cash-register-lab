
class CashRegister
   attr_accessor :total, :discount, :items, :final_item

    def initialize(discount=nil, total= 0, items = [])
        @total = total
        @discount = discount
        @items = items
    end

    def add_item(title, price, quantity = 1)
        self.final_item = price * quantity
        self.total += (price * quantity)
        quantity.times {@items.push(title)}
    end

    def apply_discount
        if @discount 
            employee_discount = self.discount / 100.0
            self.total = self.total - (self.total * employee_discount).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
     @items.pop
        @total -= @final_item 
     if @items.empty?
        @total =0
     end
     
    end



end

