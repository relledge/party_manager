class CreatePartyCustomers < ActiveRecord::Migration
  def change
    create_table :party_customers do |t|
      t.boolean :hostess_idc
      t.references :party, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
