# == Schema Information
#
# Table name: sales_rep_customers
#
#  id           :integer         not null, primary key
#  sales_rep_id :integer
#  customer_id  :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SalesRepCustomer < ActiveRecord::Base
  belongs_to :sales_rep
  belongs_to :customer
end
