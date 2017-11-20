class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.resources :user
      t.string :description
      t.string :origin
      t.string :destination
      t.integer :containers_needed
      t.decimal :cost

      t.timestamps
    end
  end
end
