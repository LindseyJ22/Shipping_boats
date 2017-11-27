class Job < ApplicationRecord
	belongs_to :user
	has_many :job_boats
	has_many :boats, through: :job_boats, dependent: :destroy
	validates_numericality_of :cost, greater_than: 1000
	validates :description, length: { minimum: 50}
	validates :origin, presence: true
	validates :destination, presence: true
end
