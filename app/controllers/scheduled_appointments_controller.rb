class ScheduledAppointmentsController < ApplicationController
  before_action :set_scheduled_appointment, only: [:show, :edit, :update, :destroy]

  # GET /scheduled_appointments
  # GET /scheduled_appointments.json
  def index
    @scheduled_appointments = ScheduledAppointment.all
  end

  # GET /scheduled_appointments/1
  # GET /scheduled_appointments/1.json
  def show
  end

  # GET /scheduled_appointments/new
  def new
    @scheduled_appointment = ScheduledAppointment.new
  end

  # GET /scheduled_appointments/1/edit
  def edit
  end

  # POST /scheduled_appointments
  # POST /scheduled_appointments.json
  def create
    @scheduled_appointment = ScheduledAppointment.new(scheduled_appointment_params)

    respond_to do |format|
      if @scheduled_appointment.save
        format.html { redirect_to @scheduled_appointment, notice: 'Scheduled appointment was successfully created.' }
        format.json { render :show, status: :created, location: @scheduled_appointment }
      else
        format.html { render :new }
        format.json { render json: @scheduled_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scheduled_appointments/1
  # PATCH/PUT /scheduled_appointments/1.json
  def update
    respond_to do |format|
      if @scheduled_appointment.update(scheduled_appointment_params)
        format.html { redirect_to @scheduled_appointment, notice: 'Scheduled appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduled_appointment }
      else
        format.html { render :edit }
        format.json { render json: @scheduled_appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_appointments/1
  # DELETE /scheduled_appointments/1.json
  def destroy
    @scheduled_appointment.destroy
    respond_to do |format|
      format.html { redirect_to scheduled_appointments_url, notice: 'Scheduled appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduled_appointment
      @scheduled_appointment = ScheduledAppointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scheduled_appointment_params
      params.require(:scheduled_appointment).permit(:schedule_id, :doctor_id, :user_id)
    end
end
