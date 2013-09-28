# == Schema Information
#
# Table name: states
#
#  id         :integer         not null, primary key
#  state_full :string(255)
#  state_abbr :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class State < ActiveRecord::Base
  attr_accessible :state_abbr, :state_full

  has_many :addresses
end
