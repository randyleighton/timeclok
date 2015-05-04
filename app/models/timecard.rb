class Timecard < ActiveRecord::Base

  belongs_to :user
  has_many :days, ->{ order("work_date DESC") }, dependent: :destroy

  accepts_nested_attributes_for :days, :reject_if => :all_blank

  validates :start_date, presence: true
  validates :end_date, presence: true

end