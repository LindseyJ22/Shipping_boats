class UsersController < ApplicationController
  def index
  	@boats = Boat.all
  	@jobs = Job.all
  	@job_boat = JobBoat.new
  end

  def show
  	@job_boat = JobBoat.new
  	@boat = Boat.new
  end
end
