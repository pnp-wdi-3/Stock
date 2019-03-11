class Product < ApplicationRecord
    before_save :calculate_receipt_tax
    before_save :define_state

    belongs_to :user
    validates :name , :brand , :category ,:quantity , :exp_date, :price , presence: true


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
