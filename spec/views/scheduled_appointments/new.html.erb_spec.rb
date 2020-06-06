require 'rails_helper'

RSpec.describe "scheduled_appointments/new", type: :view do
  before(:each) do
    assign(:scheduled_appointment, ScheduledAppointment.new(
      schedule_id: 1,
      doctor_id: 1,
      user_id: 1
    ))
  end

  it "renders new scheduled_appointment form" do
    render

    assert_select "form[action=?][method=?]", scheduled_appointments_path, "post" do

      assert_select "input[name=?]", "scheduled_appointment[schedule_id]"

      assert_select "input[name=?]", "scheduled_appointment[doctor_id]"

      assert_select "input[name=?]", "scheduled_appointment[user_id]"
    end
  end
end
