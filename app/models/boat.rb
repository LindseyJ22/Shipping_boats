class Boat < ApplicationRecord
  belongs_to :user
	has_many :jobs, through: :job_boats
end
