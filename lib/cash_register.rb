require "pry"

class CashRegister

    attr_accessor :total, :discount, :last_transaction_amount, :items
  
    def initialize(discount = 0)
      @total = 0
      @discount = discount
      @items = []
    end

    def add_item(title, amount, quantity = 1)
        self.total += amount* quantity
        quantity.times do 
            items << title
        end
        @last_transaction_amount= amount*quantity
    end

    
    
    def apply_discount
        #binding.pry
        if discount !=0
            @discount = (@discount * (0.01))
            @total -= (@total * @discount)
            @total = @total.to_i
         
           
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
            
        end 
    end 
    
    def void_last_transaction
        
        #binding.pry
     @total -= @last_transaction_amount
    
    
    end 

end
