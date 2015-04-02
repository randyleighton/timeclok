class CreateDay < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.date :datetime
      t.time :start_time
      t.time :stop_time
      t.time :lunch_start
      t.time :lunch_end
      t.integer :timecard_id 
      t.integer :user_id

      t.timestamps
    end
  end
end
