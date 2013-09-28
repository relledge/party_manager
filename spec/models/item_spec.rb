# == Schema Information
#
# Table name: items
#
#  id          :integer         not null, primary key
#  sku         :string(255)
#  description :string(255)
#  quantity    :integer
#  price       :decimal(, )
#  cost        :decimal(, )
#  order_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Item do
  pending "add some examples to (or delete) #{__FILE__}"
end
