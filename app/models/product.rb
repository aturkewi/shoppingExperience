class Product < ActiveRecord::Base

  has_many :line_items
  has_many :carts, through: :line_items
  has_many :users, through: :carts

  validates :name, uniqueness: true
  def self.most_purchased
    joins(:line_items).select("products.*, count(products.id) as 'times_bought'").group("products.id").order("times_bought DESC").limit(1)
  end

end
