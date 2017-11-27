class JobBoatsController < ApplicationController
 

  def create
    @job_boat = JobBoat.create(job_boat_params)
    redirect_to current_user
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
