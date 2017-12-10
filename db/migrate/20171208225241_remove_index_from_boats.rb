class RemoveIndexFromBoats < ActiveRecord::Migration[5.1]
  def change
  	remove_index :boats, :name
  end
end
