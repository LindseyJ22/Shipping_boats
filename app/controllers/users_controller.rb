class UsersController < ApplicationController
  def index
  	@boats = Boat.all
  	@jobs = Job.all
  	@job_boat = JobBoat.new
  end

  def show
    @user = User.find(params[:id])
  	@boats = Boat.all
  	@job_boat = JobBoat.new
  	@boat = Boat.new
  end
end
