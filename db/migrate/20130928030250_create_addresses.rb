class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line_1
      t.string :line_2
      t.string :city
      t.string :postal_code
      t.references :state, index: true
      t.references :address_type, index: true

      t.timestamps
    end
  end
end
