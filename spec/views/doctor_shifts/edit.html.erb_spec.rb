require 'rails_helper'

RSpec.describe "doctor_shifts/edit", type: :view do
  before(:each) do
    @doctor_shift = assign(:doctor_shift, DoctorShift.create!(
      doctor_id: 1,
      start_hour: 1,
      start_min: 1,
      end_hour: 1,
      end_min: 1
    ))
  end

  it "renders the edit doctor_shift form" do
    render

    assert_select "form[action=?][method=?]", doctor_shift_path(@doctor_shift), "post" do

      assert_select "input[name=?]", "doctor_shift[doctor_id]"

      assert_select "input[name=?]", "doctor_shift[start_hour]"

      assert_select "input[name=?]", "doctor_shift[start_min]"

      assert_select "input[name=?]", "doctor_shift[end_hour]"

      assert_select "input[name=?]", "doctor_shift[end_min]"
    end
  end
end
