class AcademiesController < ApplicationController
 
  before_action :require_user

  def index
    @academies = Academy.all
  end

  def show
    @academy = Academy.find(params[:id])
    @centres = Centre.all
  end

  def new
    @academy = Academy.new
  end

  def create
    @academy = Academy.new(academy_params)

    if @academy.save
      flash[:notice] = "Your Academy was created."
      redirect_to academies_path
    else
      render :new
    end
  end

  def edit
    @academy = Academy.find(params[:id])
  end

  def update
    @academy = Academy.find(params[:id])
    if @academy.update(academy_params)
      flash[:notice] = "This academy was updated."
      redirect_to academy_path(@academy)
    else
      render :edit
    end
  end

  private

  def academy_params
    params.require(:academy).permit(:name)
  end

end