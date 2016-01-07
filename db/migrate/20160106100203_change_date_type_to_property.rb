class ChangeDateTypeToProperty < ActiveRecord::Migration
  def change
    change_column :properties, :footprint, :float
  end
end
