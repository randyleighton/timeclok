class TimecardsController < ApplicationController
  before_filter :find_timecard, except: [:index,:new,:create]

  respond_to :html, :js

  def index
    @timecards = Timecard.all.where(user_id:current_user.id).order_by_newest
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
    @day = @timecard.days.new
  end

  def edit
  end

  def update
    if @timecard.update(timecard_params)
      redirect_to timecard_path(@timecard), notice:"Update Success."
    else
      render 'edit'
    end
  end

  def destroy
    @timecard.destroy
    redirect_to root_url
    flash["notice"]="Destroyed Successfully"
  end

private
  
  def timecard_params
    params.require(:timecard).permit(:start_date, :end_date, :user_id, day_attributes:[:start_time, :stop_time, :lunch_start, :lunch_stop])
  end

  def find_timecard
    @timecard = Timecard.find(params[:id])
  end

end