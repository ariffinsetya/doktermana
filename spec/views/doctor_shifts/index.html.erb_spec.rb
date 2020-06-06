require 'rails_helper'

RSpec.describe "doctor_shifts/index", type: :view do
  before(:each) do
    assign(:doctor_shifts, [
      DoctorShift.create!(
        doctor_id: 2,
        start_hour: 3,
        start_min: 4,
        end_hour: 5,
        end_min: 6
      ),
      DoctorShift.create!(
        doctor_id: 2,
        start_hour: 3,
        start_min: 4,
        end_hour: 5,
        end_min: 6
      )
    ])
  end

  it "renders a list of doctor_shifts" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
  end
end
