require 'rails_helper'

RSpec.describe "doctor_shifts/_form", type: :view do
  let!(:doctor_shift) { DoctorShift.new }

  it "renders the edit doctor_shift form" do
    render 'doctor_shifts/form', doctor_shift: doctor_shift
    expect(rendered).to have_selector('select[name=\"doctor_shift\[doctor_id\]\"]')
    expect(rendered).to have_selector('input[name=\"doctor_shift\[start_hour\]\"]')
    expect(rendered).to have_selector('input[name=\"doctor_shift\[start_min\]\"]')
    expect(rendered).to have_selector('input[name=\"doctor_shift\[end_hour\]\"]')
    expect(rendered).to have_selector('input[name=\"doctor_shift\[end_min\]\"]')
  end
end
