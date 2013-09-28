# == Schema Information
#
# Table name: party_customers
#
#  id          :integer         not null, primary key
#  hostess_idc :boolean
#  party_id    :integer
#  customer_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class PartyCustomer < ActiveRecord::Base
  belongs_to :party
  belongs_to :customer
end
