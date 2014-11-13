class TimeslotsController < ApplicationController

  def index
    @timeslots = Timeslot.all
    @timeslots_by_date = @timeslots.group_by {|i| i.starts_at.to_date} #this should show the timeslots
    @date = params[:date] ? Date.parse(params[:date]) : Date.today  #this shows the month  
  end

  def show
    @timeslot = Timeslot.find(params[:id])    
  end

  def new
    @timeslot = Timeslot.new
  end

  def create
    @timeslot = Timeslot.new(timeslot_params)

    if @timeslot.save
      flash[:notice] = "Your timeslot was created."
      redirect_to timeslots_path(@timeslot)
    else
      render :new
    end
  end

  def edit
    @timeslot = Timeslot.find(params[:id])
  end

  def update
    @timeslot = Timeslot.find(params[:id])
    if @timeslot.update(timeslot_params)
      flash[:notice] = "This timeslot was updated."
      redirect_to timeslot_path(@timeslot)
    else
      render :edit
    end
  end

  private

  def timeslot_params
    params.require(:timeslot).permit(:name,  :starts_at)
  end

end