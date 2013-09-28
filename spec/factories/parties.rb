# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :party do
    description "MyString"
    party_date "2013-09-27 23:15:50"
    close_date "2013-09-27 23:15:50"
    status_type nil
  end
end
