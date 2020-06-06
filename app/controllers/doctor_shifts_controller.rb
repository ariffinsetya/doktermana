class DoctorShiftsController < ApplicationController
  before_action :set_doctor_shift, only: [:show, :edit, :update, :destroy]

  # GET /doctor_shifts
  # GET /doctor_shifts.json
  def index
    @doctor_shifts = DoctorShift.all
  end

  # GET /doctor_shifts/1
  # GET /doctor_shifts/1.json
  def show
  end

  # GET /doctor_shifts/new
  def new
    @doctor_shift = DoctorShift.new
  end

  # GET /doctor_shifts/1/edit
  def edit
  end

  # POST /doctor_shifts
  # POST /doctor_shifts.json
  def create
    @doctor_shift = DoctorShift.new(doctor_shift_params)

    respond_to do |format|
      if @doctor_shift.save
        format.html { redirect_to @doctor_shift, notice: 'Doctor shift was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_shift }
      else
        format.html { render :new }
        format.json { render json: @doctor_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_shifts/1
  # PATCH/PUT /doctor_shifts/1.json
  def update
    respond_to do |format|
      if @doctor_shift.update(doctor_shift_params)
        format.html { redirect_to @doctor_shift, notice: 'Doctor shift was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_shift }
      else
        format.html { render :edit }
        format.json { render json: @doctor_shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_shifts/1
  # DELETE /doctor_shifts/1.json
  def destroy
    @doctor_shift.destroy
    respond_to do |format|
      format.html { redirect_to doctor_shifts_url, notice: 'Doctor shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_shift
      @doctor_shift = DoctorShift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_shift_params
      params.require(:doctor_shift).permit(:doctor_id, :start_hour, :start_min, :end_hour, :end_min)
    end
end
