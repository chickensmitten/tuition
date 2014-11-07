class CentresController < ApplicationController

  def show
    @academy = Academy.find(params[:academy_id])      
    @centre = @academy.centres.find(params[:id])
  end

  def new
    @academy = Academy.find(params[:academy_id])      
    @centre = @academy.centres.new
  end

  def create
    @academy = Academy.find(params[:academy_id])      
    @centre = @academy.centres.build(centre_params)
    if @centre.save
      flash[:notice] = "Centre has been created."
      redirect_to academy_path(@academy)
    else
      render :new
    end
  end

  def edit
    @academy = Academy.find(params[:academy_id])      
    @centre = @academy.centres.find(params[:id])
  end

  def update
    @academy = Academy.find(params[:academy_id])      
    @centre = @academy.centres.find(params[:id])
    if @centre.update(centre_params)
      flash[:notice] = "This centre was updated."
      redirect_to academy_centre_path(@academy, @centre)
    else
      render :edit
    end
  end  

  private

  def centre_params
    params.require(:centre).permit(:name, :academy_id)
  end

end