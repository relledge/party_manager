class CreateStatusTypes < ActiveRecord::Migration
  def change
    create_table :status_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
