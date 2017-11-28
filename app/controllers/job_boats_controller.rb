class JobBoatsController < ApplicationController
 

  def create
   respond_to do |format|
    @job_boat = JobBoat.create(job_boat_params)
    @boats = Boat.all
    @jobs = Job.all
    format.js
   end
  end

  def destroy
    respond_to do |format| 
      @job_boat = JobBoat.find(params[:id]).destroy
      format.js
      format.html {redirect_to boats_path}
    end
  end

    private 
  def job_boat_params
    params.require(:job_boat).permit(:boat_id, :job_id)
  end
end
