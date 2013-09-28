# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :party_customer do
    hostess_idc false
    party nil
    customer nil
  end
end
