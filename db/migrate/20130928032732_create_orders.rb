class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.references :party_customer, index: true

      t.timestamps
    end
  end
end
