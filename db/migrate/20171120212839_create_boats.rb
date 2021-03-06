class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :container_amount
      t.string :location

      t.timestamps
    end
    add_index :boats, :name,  unique: true
  end
end
