class IntakesController < ApplicationController
 
  before_action :require_user

  def index
    @intakes = Intake.all
  end

  def show
    @intake = Intake.find(params[:id])         
  end

  def new
    @intake = Intake.new
  end

  def create
    @intake = Intake.new(intake_params)
    if @intake.save
      flash[:notice] = "Your Intake was created."
      redirect_to intakes_path
    else
      render :new
    end
  end

  def edit
    @intake = Intake.find(params[:id])
  end

  def update
    @intake = Intake.find(params[:id])
    if @intake.update(intake_params)
      flash[:notice] = "This intake was updated."
      redirect_to intake_path(@intake)
    else
      render :edit
    end
  end

  private

  def intake_params
    params.require(:intake).permit(:name, :"start_date(1i).to_i", :"start_date(2i).to_i", :"start_date(3i).to_i", :user_id, programme_ids: [], centre_ids: [])
  end

  def flatten_date_array hash
    %w(1 2 3).map { |e| hash["start_date(#{e}i)"].to_i }
  end  

end












