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

class Item < ActiveRecord::Base
  belongs_to :order
end
