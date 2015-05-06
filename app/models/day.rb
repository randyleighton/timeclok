class Day < ActiveRecord::Base

  belongs_to :timecard
  belongs_to :user

  validates :work_date, presence: true
  validates :start_time, presence: true
  validates :stop_time, presence: true
  validates :lunch_start, presence: true
  validates :lunch_end, presence: true

validate :verify_date

  def total_lunch
    (lunch_end - lunch_start) / 3600 
  end

  def total_hours
    (stop_time - start_time) / 3600
  end

  def total_day
    total_hours - total_lunch
  end

    def verify_date
    if self.work_date != nil && self.work_date < self.timecard.start_date
      errors.add(:interview_date, "must be during timecard week")
      return false
    end
  end


end