# == Schema Information
#
# Table name: orders
#
#  id                :integer         not null, primary key
#  order_date        :datetime
#  party_customer_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

class Order < ActiveRecord::Base
  belongs_to :party_customer
end
