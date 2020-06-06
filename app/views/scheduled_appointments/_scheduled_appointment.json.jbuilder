json.extract! scheduled_appointment, :id, :schedule_id, :doctor_id, :user_id, :created_at, :updated_at
json.url scheduled_appointment_url(scheduled_appointment, format: :json)
