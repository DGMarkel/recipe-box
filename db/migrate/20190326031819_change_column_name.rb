class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :ingredients, :name, :food_name
  end
end
