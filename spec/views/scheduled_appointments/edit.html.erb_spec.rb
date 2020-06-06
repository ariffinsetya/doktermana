require 'rails_helper'

RSpec.describe "scheduled_appointments/edit", type: :view do
  before(:each) do
    @scheduled_appointment = assign(:scheduled_appointment, ScheduledAppointment.create!(
      schedule_id: 1,
      doctor_id: 1,
      user_id: 1
    ))
  end

  it "renders the edit scheduled_appointment form" do
    render

    assert_select "form[action=?][method=?]", scheduled_appointment_path(@scheduled_appointment), "post" do

      assert_select "input[name=?]", "scheduled_appointment[schedule_id]"

      assert_select "input[name=?]", "scheduled_appointment[doctor_id]"

      assert_select "input[name=?]", "scheduled_appointment[user_id]"
    end
  end
end
