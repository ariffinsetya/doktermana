class ScheduledAppointment < ApplicationRecord
  belongs_to :schedule
  belongs_to :patient
  belongs_to :doctor
end
