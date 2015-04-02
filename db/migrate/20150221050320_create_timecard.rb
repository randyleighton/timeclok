class CreateTimecard < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.integer :user_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
