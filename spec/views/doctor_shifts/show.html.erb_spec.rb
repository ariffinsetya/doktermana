require 'rails_helper'

RSpec.describe "doctor_shifts/show", type: :view do
  let!(:doctor_shift) { create :doctor_shift }
  before(:each) do
    @doctor_shift = assign(:doctor_shift, doctor_shift)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/#{doctor_shift.doctor.name}/)
    expect(rendered).to match(/#{doctor_shift.start_hour}/)
    expect(rendered).to match(/#{doctor_shift.start_min}/)
    expect(rendered).to match(/#{doctor_shift.end_hour}/)
    expect(rendered).to match(/#{doctor_shift.end_min}/)
  end
end
