class TimecardsController < ApplicationController
  before_filter :find_timecard, except: [:index,:new,:create]
  def index

  end

  def new
    @timecard = Timecard.new
  end

  def create
    @timecard = Timecard.create(timecard_params)
    if @timecard.valid?
      redirect_to timecard_path(@timecard)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  
  def timecard_params
    params.require(:timecard).permit(:start_time, :stop_time, :lunch_start, :lunch_stop)
  end

  def find_timecard
    @timecard = Timecard.find(params[:id])
  end

end