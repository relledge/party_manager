# == Schema Information
#
# Table name: addresses
#
#  id              :integer         not null, primary key
#  line_1          :string(255)
#  line_2          :string(255)
#  city            :string(255)
#  postal_code     :string(255)
#  state_id        :integer
#  address_type_id :integer
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe Address do
  pending "add some examples to (or delete) #{__FILE__}"
end
