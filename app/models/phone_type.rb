# == Schema Information
#
# Table name: phone_types
#
#  id          :integer         not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class PhoneType < ActiveRecord::Base 
  attr_accessible :description
  
  has_many :phones
end
