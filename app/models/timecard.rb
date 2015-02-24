class Timecard < ActiveRecord::Base

  has_many :days, dependent: :destroy

  accepts_nested_attributes_for :day, :reject_if => :all_blank

end