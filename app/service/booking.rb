class Booking
    def self.booking_appointment(patient, schedule)
        time = DateTime.now
        return booking_time_late if schedule.start_time-30.minutes < DateTime.now
        doctor = schedule.doctor
        doctor_patients = doctor.patients.uniq
        return booking_max_patients if doctor_patients.size >=10
        create_new_appointment(schedule, patient)
    end

    private
    def self.booking_time_late
        {'error': 'You are too late to book this schedule. Please book another schedule.'}
    end

    def self.booking_max_patients
        {'error': 'Doctor already have 10 patients. Please book another Doctor'}
    end

    def self.create_new_appointment(schedule, patient)
        sa = ScheduledAppointment.where(schedule: schedule, patient: patient, doctor: schedule.doctor).first_or_create
        {'success': 'true', 'scheduled_appointment_id': sa.id}
    end
end