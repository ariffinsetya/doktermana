require 'rails_helper'

RSpec.describe BookingsController, type: :controller do
    describe 'GET index' do
        let!(:doctor_shifts) { create_list :doctor_shift, 3 }
        let!(:patient) { create :patient }
        it 'create or find schedule and assign it' do
            sign_in patient
            get :index
            s = Schedule.where(doctor_id: doctor_shifts.map{|x| x.id})
            expect(assigns[:schedules].size).to eq 6
            expect(assigns[:schedules]).to eq s
        end
    end

    describe 'GET show' do
        let!(:patient) { create :patient }
        let!(:scheduled_appointment) { create_list :scheduled_appointment, 2, patient: patient }
        it 'assigns bookings' do
            sign_in patient
            get :show
            expect(assigns[:bookings]).to eq scheduled_appointment
        end
    end

    describe 'POST create' do
        let!(:patient) { create :patient }
        let!(:schedule) { create :schedule }
        it 'create new scheduled appointment' do
            sign_in patient            
            post :create, params: { schedule_id: schedule.id }
            expect(ScheduledAppointment.where(patient_id: patient.id, schedule_id: schedule.id).first).to be_present
        end
    end
end 