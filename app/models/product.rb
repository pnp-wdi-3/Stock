class Product < ApplicationRecord
    belongs_to :user
    validates :name , :brand , :category ,:quantity , :exp_date, :price , presence: true
    validates :quantity, :price, numericality: {greater_than_or_equal_to: 1 }

    before_save :calculate_receipt_tax
    before_save :define_state

def calculate_receipt_tax
  tax = self.price * 0.05 + self.price # Whatever you need to do here to calculate
  self.price = tax
end

def define_state
    if self.exp_date < Date.today
       self.state = "expierd" 
    else
        self.state = "new" 
    end
  
  end

end
