FactoryGirl.define do
  factory :cart do
    association :user
    purchase_date { Faker::Date.between(100.years.ago, 99.years.ago)}
  end
end
