class CreateSalesRepParties < ActiveRecord::Migration
  def change
    create_table :sales_rep_parties do |t|
      t.references :sales_rep, index: true
      t.references :party, index: true

      t.timestamps
    end
  end
end
