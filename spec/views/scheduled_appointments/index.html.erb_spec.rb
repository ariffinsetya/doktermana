require 'rails_helper'

RSpec.describe "scheduled_appointments/index", type: :view do
  before(:each) do
    assign(:scheduled_appointments, [
      ScheduledAppointment.create!(
        schedule_id: 2,
        doctor_id: 3,
        user_id: 4
      ),
      ScheduledAppointment.create!(
        schedule_id: 2,
        doctor_id: 3,
        user_id: 4
      )
    ])
  end

  it "renders a list of scheduled_appointments" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
