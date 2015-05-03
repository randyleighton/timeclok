class Day < ActiveRecord::Base

  belongs_to :timecard
  belongs_to :user

  def total_lunch
    (lunch_end - lunch_start) / 3600 
  end

  def total_hours
    (stop_time - start_time) / 3600
  end

  def total_day
    total_hours - total_lunch
  end
end