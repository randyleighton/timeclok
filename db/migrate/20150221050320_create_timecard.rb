class CreateTimecard < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.time :start_time
      t.time :stop_time
    end
  end
end
