class Timecard < ActiveRecord::Base

  belongs_to :user
  has_many :days, ->{ order("work_date DESC") }, dependent: :destroy

  accepts_nested_attributes_for :days, :reject_if => :all_blank

  validates :start_date, presence: true
  validates :end_date, presence: true

  scope :order_by_newest, ->{ order("start_date DESC") }
  scope :order_by_oldest, ->{ order("start_date ASC") }
end