class RoomsController < ApplicationController
  
  def show   
    @academy = Academy.find(params[:academy_id])    
    @centre = Centre.find(params[:centre_id])    
    @room = @centre.rooms.find(params[:id])
  end

  def new 
    @academy = Academy.find(params[:academy_id])    
    @centre = Centre.find(params[:centre_id])         
    @room = @centre.rooms.new
  end

  def create
    @academy = Academy.find(params[:academy_id])
    @centre = Centre.find(params[:centre_id])            
    @room = @centre.rooms.build(room_params)
    if @room.save
      flash[:notice] = "Room has been created."
      redirect_to academy_centre_path(@academy, @centre)
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
    if @centre.update(room_params)
      flash[:notice] = "This room was updated."
      redirect_to academy_centre_path(@centre)
    else
      render :edit
    end
  end  

  private

  def room_params
    params.require(:room).permit(:name, :centre_id)
  end

end