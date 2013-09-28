# == Schema Information
#
# Table name: customer_phones
#
#  id          :integer         not null, primary key
#  customer_id :integer
#  phone_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class CustomerPhone < ActiveRecord::Base
  belongs_to :customer
  belongs_to :phone
end
