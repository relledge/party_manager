# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expense do
    description "MyString"
    price "9.99"
    mileage 1
    expense_date "2013-09-27 23:24:30"
    party nil
  end
end
