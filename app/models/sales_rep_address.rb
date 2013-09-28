# == Schema Information
#
# Table name: sales_rep_addresses
#
#  id           :integer         not null, primary key
#  sales_rep_id :integer
#  address_id   :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SalesRepAddress < ActiveRecord::Base
  belongs_to :sales_rep
  belongs_to :address
end
