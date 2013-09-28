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

require 'spec_helper'

describe PartyCustomer do
  pending "add some examples to (or delete) #{__FILE__}"
end
