class ProgrammesController < ApplicationController
  
  before_action :require_user

  def index
    @programmes = Programme.all
  end

  def show
    @programme = Programme.find(params[:id])
    @topic = Topic.new
  end

  def new
    @programme = Programme.new
  end

  def create
    @programme = Programme.new(programme_params)

    if @programme.save
      flash[:notice] = "Your programme was created."
      redirect_to programmes_path
    else
      render :new
    end
  end

  def edit
    @programme = Programme.find(params[:id])
  end

  def update
    @programme = Programme.find(params[:id])
    if @programme.update(programme_params)
      flash[:notice] = "This programme was updated."
      redirect_to programmes_path(@programme)
    else
      render :edit
    end
  end

  private

  def programme_params
    params.require(:programme).permit(:name)
  end

end