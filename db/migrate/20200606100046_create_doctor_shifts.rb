class CreateDoctorShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_shifts do |t|
      t.integer :doctor_id
      t.integer :start_hour
      t.integer :start_min
      t.integer :end_hour
      t.integer :end_min

      t.timestamps
    end
  end
end
