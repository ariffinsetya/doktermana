require 'rails_helper'

RSpec.describe "doctor_shifts/index", type: :view do
  let!(:doctor_shifts) { create_list :doctor_shift, 2 }
  before(:each) do
    assign(:doctor_shifts, doctor_shifts)
  end

  it "renders a list of doctor_shifts" do
    render
    doctor_shifts.each do |ds|
      expect(rendered).to have_text(ds.doctor.name)
      expect(rendered).to have_text(ds.start_hour)
      expect(rendered).to have_text(ds.start_min)
      expect(rendered).to have_text(ds.end_hour)
      expect(rendered).to have_text(ds.end_min)
    end
  end
end
