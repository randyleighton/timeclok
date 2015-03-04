class Timecard < ActiveRecord::Base

  has_many :days, dependent: :destroy

  accepts_nested_attributes_for :days, :reject_if => :all_blank

  scope :order_by, ->{ joins(:day).order('day.start_time ASC') }

end