require 'rails_helper'

RSpec.describe "scheduled_appointments/index", type: :view do
  let!(:scheduled_appointments) { create_list :scheduled_appointment, 3 }
  before(:each) do
    assign(:scheduled_appointments, scheduled_appointments)
  end

  it "renders a list of scheduled_appointments" do
    render
    scheduled_appointments.each do |ds|
      expect(rendered).to have_text(ds.schedule.start_time.strftime('%D %T'))
      expect(rendered).to have_text(ds.schedule.end_time.strftime('%D %T'))
      expect(rendered).to have_text(ds.doctor.name)
      expect(rendered).to have_text(ds.patient.name)
    end
  end
end
