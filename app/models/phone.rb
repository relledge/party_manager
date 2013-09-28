# == Schema Information
#
# Table name: phones
#
#  id            :integer         not null, primary key
#  phone_number  :string(255)
#  phone_type_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Phone < ActiveRecord::Base
  belongs_to :phone_type
end
