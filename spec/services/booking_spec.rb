require 'rails_helper'

RSpec.describe Booking do
    describe '#booking_appointment' do
        let!(:patient) { create :patient }
        context 'when patient book the appointment schedule is still valid/not late' do
            let!(:schedule) { create :schedule, start_time: 4.hours.after, end_time: 8.hours.after }
            it 'create scheduled appointment, return id' do
                result = Booking.booking_appointment(patient, schedule)
                expect(result[:success]).to eq 'true'
                expect(result[:scheduled_appointment_id]).to be_present
            end
        end

        context 'when patient book the appointment schedule late' do
            let!(:schedule) { create :schedule, start_time: 20.minutes.after, end_time: 8.hours.after }
            it 'create scheduled appointment, return id' do
                result = Booking.booking_appointment(patient, schedule)
                expect(result[:error]).to match /late/
            end
        end

        context 'when patient book the appointment , doctor already have 10 patients' do
            let!(:schedule) { create :schedule, start_time: 4.hours.after, end_time: 8.hours.after }
            let!(:scheduled_appointments) { create_list :scheduled_appointment, 10, schedule: schedule }
            it 'create scheduled appointment, return id' do
                result = Booking.booking_appointment(patient, schedule)
                expect(result[:error]).to match /10 patients/
            end
        end
    end
end