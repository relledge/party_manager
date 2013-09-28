# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :order_address do
    order nil
    address nil
  end
end
