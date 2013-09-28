class CreateCustomerPhones < ActiveRecord::Migration
  def change
    create_table :customer_phones do |t|
      t.references :customer, index: true
      t.references :phone, index: true

      t.timestamps
    end
  end
end
