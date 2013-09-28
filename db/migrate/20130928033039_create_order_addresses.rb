class CreateOrderAddresses < ActiveRecord::Migration
  def change
    create_table :order_addresses do |t|
      t.references :order, index: true
      t.references :address, index: true

      t.timestamps
    end
  end
end
