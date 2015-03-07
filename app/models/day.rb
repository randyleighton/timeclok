class Day < ActiveRecord::Base

  belongs_to :timecard
  belongs_to :user
  
  # scope :order_by, ~>{ order(start_time: :asc) }

end