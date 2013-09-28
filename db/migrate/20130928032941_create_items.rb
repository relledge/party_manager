class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :sku
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.decimal :cost
      t.references :order, index: true

      t.timestamps
    end
  end
end
