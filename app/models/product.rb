class Product < ApplicationRecord
    belongs_to :user
    validates :name , :brand , :category ,:quantity , :exp_date, :price , presence: true

end
