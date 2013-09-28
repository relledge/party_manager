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

require 'spec_helper'

describe Party do
  pending "add some examples to (or delete) #{__FILE__}"
end
