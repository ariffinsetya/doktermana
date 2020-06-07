require 'rails_helper'

RSpec.describe "scheduled_appointments/_form", type: :view do
  let!(:scheduled_appointment) { ScheduledAppointment.new }

  it "renders the edit scheduled_appointment form" do
    render 'scheduled_appointments/form', scheduled_appointment: scheduled_appointment
    expect(rendered).to have_selector('select[name=\"scheduled_appointment\[schedule_id\]\"]')
    expect(rendered).to have_selector('select[name=\"scheduled_appointment\[patient_id\]\"]')
  end
end
