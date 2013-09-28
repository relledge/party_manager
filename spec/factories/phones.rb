# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phone do
    phone_number "MyString"
    phone_type nil
  end
end
