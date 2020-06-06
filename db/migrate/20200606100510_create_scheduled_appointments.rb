class CreateScheduledAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :scheduled_appointments do |t|
      t.integer :schedule_id
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
