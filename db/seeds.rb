# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Product.destroy_all
LineItem.destroy_all
Cart.destroy_all


100.times do
  FactoryGirl.create(:user)
end

50.times do
  product = FactoryGirl.build(:product)
  product.save
end

200.times do
  offset = rand(User.count)
  rand_user = User.offset(offset).first
  FactoryGirl.create(:cart, user: rand_user)
end

1000.times do
  offset = rand(Cart.count)
  rand_cart = Cart.offset(offset).first
  offset = rand(Product.count)
  rand_product = Product.offset(offset).first
  FactoryGirl.create(:line_item, cart: rand_cart, product: rand_product)
end
