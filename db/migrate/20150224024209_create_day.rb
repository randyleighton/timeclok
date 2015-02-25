class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.time :start_time
      t.time :stop_time
      t.time :lunch_start
      t.time :lunch_end
    end
  end
end
