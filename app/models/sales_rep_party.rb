# == Schema Information
#
# Table name: sales_rep_parties
#
#  id           :integer         not null, primary key
#  sales_rep_id :integer
#  party_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SalesRepParty < ActiveRecord::Base
  belongs_to :sales_rep
  belongs_to :party
end
