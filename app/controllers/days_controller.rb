class DaysController < ApplicationController
  before_filter :find_timecard
  before_filter :find_day, except:[:index,:new,:create]
  
  respond_to :html, :js

  def new
    @day = @timecard.days.new
  end

  def create
    @day = @timecard.days.create(day_params)
  end

  def edit
  end

  def update
    if @day.update(day_params)
      redirect_to timecard_path(@timecard), notice: "Updated Successfully"
    else
      render 'edit', alert:"Failed to Update"
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
    params.require(:day).permit(:work_date, :start_time, :stop_time, :lunch_start, :lunch_end, :user_id, :timecard_id)
  end

  def find_day
    @day = Day.find(params[:id])
  end

  def find_timecard
    @timecard = Timecard.find(params[:timecard_id])
  end

end