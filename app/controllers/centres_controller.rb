class CentresController < ApplicationController

  def new
    @centre = Centre.new
  end

  def create
    @centre = Centre.new(category_params)
    if @centre.save
      flash[:notice] = "Centre has been created."
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @centre = Centre.find(params[:id])
  end

  def edit
    @centre = Centre.find(params[:id])
  end

  private

  def centre_params
    params.require(:centre).permit(:name, :room, :timeslot)
  end

end