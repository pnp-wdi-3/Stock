class Brunch < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
  validates :name , :city , :address , presence: true

end
