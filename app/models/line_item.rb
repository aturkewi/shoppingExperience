class LineItem < ActiveRecord::Base

  belongs_to :cart
  belongs_to :product
  delegate :user, to: :cart

end
