class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.integer :doctor_id
      t.timestamp :start_time
      t.timestamp :end_time

      t.timestamps
    end
  end
end
