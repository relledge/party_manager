# == Schema Information
#
# Table name: sales_rep_phones
#
#  id           :integer         not null, primary key
#  sales_rep_id :integer
#  phone_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class SalesRepPhone < ActiveRecord::Base
  belongs_to :sales_rep
  belongs_to :phone
end
