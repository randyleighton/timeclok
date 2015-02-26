class AddDateToTimecards < ActiveRecord::Migration
  def change
    add_column :timecards, :start_date, :date
    add_column :timecards, :end_date, :date
  end
end
