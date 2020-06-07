class BookingsController < ApplicationController
    before_action :authenticate_user!

    def index
        doctor_shifts = DoctorShift.all
        @schedules = doctor_shifts.map do |ds|
            now = Schedule.from_shift(DateTime.now, ds)
            tomorrow = Schedule.from_shift(1.days.after,ds)
            [now,tomorrow]
        end.flatten
    end

    def show
        @bookings = ScheduledAppointment.where(patient_id: current_user.id)
    end

    def create
        schedule = Schedule.find(params[:schedule_id])
        result = Booking.booking_appointment(current_user, schedule)
        respond_to do |format|
            if result[:error]
                format.html { redirect_to '/bookings', alert: result[:error]}
            else
                format.html { redirect_to "/bookings/mine", notice: 'Your booking is success.' }
            end
        end
    end
end