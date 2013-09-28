# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    sku "MyString"
    description "MyString"
    quantity 1
    price "9.99"
    cost "9.99"
    order nil
  end
end
