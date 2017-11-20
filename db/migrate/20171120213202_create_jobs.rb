class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table  :jobs do |t|
      t.references :user
      t.string    :description
      t.string    :origin
      t.string    :destination
      t.integer   :containers_needed
      t.decimal   :cost
      t.string    :job_name
      t.timestamps
    end
    add_index :jobs, :job_name, unique: true
  end
end
