class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
    @countries = Boat.country_names
  end

  def create
    @user = current_user
    @boat = current_user.boats.create(boat_params)
    redirect_to @user

  end

  def show
    @boats = Boat.all
    # @boat = Boat.find(params[:id])
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to user_path
  end

  def destroy
    respond_to do |format| 
      @boat = Boat.find(params[:id]).destroy
      format.js
      format.html {redirect_to boats_path}
     end
  end
    private 
  
  def boat_params
    params.require(:boat).permit(:name, :container_amount, :location, :avatar)
  end
end
