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

require 'spec_helper'

describe Phone do
  pending "add some examples to (or delete) #{__FILE__}"
end
