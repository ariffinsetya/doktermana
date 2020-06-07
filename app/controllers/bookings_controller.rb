class BookingsController < ApplicationController
    before_action :authenticate_user!

    def index
        doctor_shifts = DoctorShift.all
        @schedules = doctor_shifts.map do |ds|
            Schedule.from_shift(DateTime.now, ds)
        end
    end

    def create
        schedule = Schedule.find(params[:schedule_id])
        result = Booking.booking_appointment(current_user, schedule)
        respond_to do |format|
            if result[:error]
                format.html { redirect_to '/bookings', alert: result[:error]}
            else
                format.html { redirect_to "/scheduled_appointments/#{result[:schedule_appointment_id]}", notice: 'Your booking is success.' }
            end
        end
    end
end