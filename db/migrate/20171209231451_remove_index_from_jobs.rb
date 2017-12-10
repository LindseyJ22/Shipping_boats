class RemoveIndexFromJobs < ActiveRecord::Migration[5.1]
  def change
  	remove_index :jobs, :job_name
  end
end
