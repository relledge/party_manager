class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :description
      t.decimal :price
      t.integer :mileage
      t.datetime :expense_date
      t.references :party, index: true

      t.timestamps
    end
  end
end
