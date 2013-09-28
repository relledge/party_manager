# == Schema Information
#
# Table name: parties
#
#  id             :integer         not null, primary key
#  description    :string(255)
#  party_date     :datetime
#  close_date     :datetime
#  status_type_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Party < ActiveRecord::Base
  belongs_to :status_type
end
