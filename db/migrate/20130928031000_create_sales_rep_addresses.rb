class CreateSalesRepAddresses < ActiveRecord::Migration
  def change
    create_table :sales_rep_addresses do |t|
      t.references :sales_rep, index: true
      t.references :address, index: true

      t.timestamps
    end
  end
end
