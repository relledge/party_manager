# == Schema Information
#
# Table name: status_types
#
#  id          :integer         not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class StatusType < ActiveRecord::Base
end
