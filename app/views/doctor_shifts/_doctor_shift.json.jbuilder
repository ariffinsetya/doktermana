json.extract! doctor_shift, :id, :doctor_id, :start_hour, :start_min, :end_hour, :end_min, :created_at, :updated_at
json.url doctor_shift_url(doctor_shift, format: :json)
