class Doctor < User
    has_many :schedules
    has_many :doctor_shifts
    has_many :scheduled_appointments, foreign_key: "doctor_id"
    has_many :patients, through: :scheduled_appointments
    has_one :employment
    has_one :hospital, through: :employment
end