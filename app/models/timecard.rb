class Timecard < ActiveRecord::Base

  belongs_to :user
  has_many :days, ->{ order("work_date DESC") }, dependent: :destroy

  accepts_nested_attributes_for :days, :reject_if => :all_blank

end