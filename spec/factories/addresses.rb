# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    line_1 "MyString"
    line_2 "MyString"
    city "MyString"
    postal_code "MyString"
    state nil
    address_type nil
  end
end
