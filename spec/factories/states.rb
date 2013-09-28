# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :state do
    state_full "MyString"
    state_abbr "MyString"
  end
end
