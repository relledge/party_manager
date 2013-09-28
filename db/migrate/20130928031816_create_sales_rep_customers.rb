class CreateSalesRepCustomers < ActiveRecord::Migration
  def change
    create_table :sales_rep_customers do |t|
      t.references :sales_rep, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
