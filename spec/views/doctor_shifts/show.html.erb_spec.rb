require 'rails_helper'

RSpec.describe "doctor_shifts/show", type: :view do
  before(:each) do
    @doctor_shift = assign(:doctor_shift, DoctorShift.create!(
      doctor_id: 2,
      start_hour: 3,
      start_min: 4,
      end_hour: 5,
      end_min: 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
