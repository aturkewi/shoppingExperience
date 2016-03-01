FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.product_name }
    price { Faker::Number.between(1,1000) }
  end
end
