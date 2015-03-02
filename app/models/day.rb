class Day < ActiveRecord::Base

  belongs_to :timecard
  scope :order_by, ~>{ order(start_date: :asc) }

end