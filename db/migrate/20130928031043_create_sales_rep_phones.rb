class CreateSalesRepPhones < ActiveRecord::Migration
  def change
    create_table :sales_rep_phones do |t|
      t.references :sales_rep, index: true
      t.references :phone, index: true

      t.timestamps
    end
  end
end
