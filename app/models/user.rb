class User < ActiveRecord::Base

  has_many :carts
  has_many :line_items, through: :carts
  has_many :products, through: :line_items

  def favorit_item
    
  end

end
