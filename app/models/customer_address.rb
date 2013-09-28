# == Schema Information
#
# Table name: customer_addresses
#
#  id          :integer         not null, primary key
#  customer_id :integer
#  address_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class CustomerAddress < ActiveRecord::Base
  belongs_to :customer
  belongs_to :address
end
