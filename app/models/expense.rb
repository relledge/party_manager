# == Schema Information
#
# Table name: expenses
#
#  id           :integer         not null, primary key
#  description  :string(255)
#  price        :decimal(, )
#  mileage      :integer
#  expense_date :datetime
#  party_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Expense < ActiveRecord::Base
  belongs_to :party
end
