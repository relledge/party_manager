# == Schema Information
#
# Table name: address_types
#
#  id          :integer         not null, primary key
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class AddressType < ActiveRecord::Base  
  attr_accessible :description
  
  has_many :addresses
  
end
