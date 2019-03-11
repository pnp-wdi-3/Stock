class Product < ApplicationRecord
    belongs_to :user
    validates :name , :brand , :category ,:quantity , :exp_date, :price , presence: true
    validates :quantity, :price, numericality: {greater_than_or_equal_to: 1 }

end
