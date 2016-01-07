class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address, null: false
      t.integer :rent, null: false
      t.integer :footprint, null: false

      t.timestamps null: false
    end
  end
end
