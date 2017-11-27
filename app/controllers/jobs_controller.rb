class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
    @countries = Boat.country_names
  end

  def create
    @user = current_user
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to @user
    else 
      @countries = Boat.country_names
      render :new 
    end
  end

  def show
    @job_boat = JobBoat.new
    @jobs = Job.all
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to user_path
  end

  def destroy
    respond_to do |format| 
      @job = Job.find(params[:id]).destroy
      format.js
      format.html {redirect_to boats_path}
     end
  end
   private 
  
  def job_params
    params.require(:job).permit(:description, :origin, :destination, :containers_needed, :cost, :job_name)
  end
end
