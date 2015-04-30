class Day < ActiveRecord::Base

  belongs_to :timecard
  belongs_to :user

end