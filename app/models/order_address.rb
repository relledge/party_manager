# == Schema Information
#
# Table name: order_addresses
#
#  id         :integer         not null, primary key
#  order_id   :integer
#  address_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class OrderAddress < ActiveRecord::Base
  belongs_to :order
  belongs_to :address
end
