require 'rails_helper'

RSpec.describe "scheduled_appointments/show", type: :view do
  before(:each) do
    @scheduled_appointment = assign(:scheduled_appointment, ScheduledAppointment.create!(
      schedule_id: 2,
      doctor_id: 3,
      user_id: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
