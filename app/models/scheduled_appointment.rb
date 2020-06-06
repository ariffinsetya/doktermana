class ScheduledAppointment < ApplicationRecord
  belongs_to :schedule
  belongs_to :patient
end
