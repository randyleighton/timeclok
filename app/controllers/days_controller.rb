class DaysController < ApplicationController
  before_filter :find_day, except:[:index,:new,:create]
  before_filter :find_timecard
  
  def index
    @days = Day.all
  end

  def new
    @day = Day.new
  end

  def create
    if @day.create(day_params).valid?
      redirect_to day_path(@day), notice: "Created Successfully"
    else
      render 'new', notice: "Failed to Create"
    end
  end

  def edit
  end

  def update
    if @day.update(day_params).valid?
      redirect_to day_path(@day), notice: "Updated Successfully"
    else
      render 'edit', notice:"Failed to Update"
    end
  end

  def show
  end

  def destroy
    @day.destroy
    flash["notice"]="Day Removed"
  end

private

  def day_params
    params.require(:day).permit(:start_time, :stop_time, :lunch_start, :lunch_stop, :user_id)
  end

  def find_day
    @day = Day.find(params[:id])
  end

  def find_timecard
    @timecard = Timecard.find(params[:timecard_id])
  end

end