class CreateTimecard < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.integer :user_id
    end
  end
end
