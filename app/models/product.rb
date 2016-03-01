class Product < ActiveRecord::Base

  has_many :line_items
  has_many :carts, through: :line_items
  has_many :users, through: :carts

  validates :name, uniqueness: true

end
