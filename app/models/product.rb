class Product < ActiveRecord::Base

  has_many :line_items
  has_many :carts, through: :line_items
  has_many :users, through: :carts

  validates :name, uniqueness: true
  def self.most_purchased
    id = joins(:line_items).group("product_id").count.max.first
    find(id)
  end

end
