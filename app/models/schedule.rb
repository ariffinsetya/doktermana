class Schedule < ApplicationRecord
  belongs_to :doctor
  has_many :scheduled_appointments
  has_many :patients, through: :scheduled_appointments

  def self.generate_from_shift(datetime, doctor_shift)
    date_fmt = datetime.beginning_of_day
    start_time_seconds = doctor_shift.start_hour * 3600 + doctor_shift.start_min * 60
    end_time_seconds = doctor_shift.end_hour * 3600 + doctor_shift.end_min * 60
    start_time = date_fmt + start_time_seconds.seconds
    end_time = date_fmt + end_time_seconds.seconds
    doctor_id = doctor_shift.doctor_id
    Schedule.create(doctor_id: doctor_id, start_time: start_time, end_time: end_time)
  end
end
