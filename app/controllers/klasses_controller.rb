class KlassesController < ApplicationController

  def show
    @intake = Intake.find(params[:intake_id])      
    @klass = @intake.klasses.find(params[:id])    
  end

  def new
    @intake = Intake.find(params[:intake_id])               
    @klass = @intake.klasses.new
  end

  def create
    @intake = Intake.find(params[:intake_id])          
    @klass = @intake.klasses.build(klass_params)

    if @klass.save
      flash[:notice] = "Class has been created."
      redirect_to intake_path(@intake)
    else
      render :new
    end
  end

  def edit
    @intake = Intake.find(params[:intake_id])      
    @klass = @intake.klasses.find(params[:id])
  end

  def update
    binding.pry
    @intake = Intake.find(params[:intake_id])      
    @klass = @intake.klasses.find(params[:id])
    if @klass.update(klass_params)
      flash[:notice] = "This class was updated."
      redirect_to intake_path(@intake)
    else
      render :edit
    end
  end  

  private

  def klass_params
    params.require(:klass).permit(:name, :programme_ids, :centre_ids, :timeslot_ids, :room_ids, topic_ids: [], :timeslots_attributes => [:id, :name])
  end

end