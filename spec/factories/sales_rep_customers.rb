# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sales_rep_customer do
    sales_rep nil
    customer nil
  end
end
