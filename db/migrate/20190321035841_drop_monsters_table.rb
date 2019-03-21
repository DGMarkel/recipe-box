class DropMonstersTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :monsters
  end
end
