class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :description
      t.datetime :party_date
      t.datetime :close_date
      t.references :status_type, index: true

      t.timestamps
    end
  end
end
