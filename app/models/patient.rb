class Patient < User
    has_many :scheduled_appointments
    has_many :schedules, through: :scheduled_appointments
end