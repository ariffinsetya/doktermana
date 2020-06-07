require 'rails_helper'

RSpec.describe "doctor_shifts/edit", type: :view do
  let!(:doctor_shift) { create :doctor_shift }
  before(:each) do
    @doctor_shift = assign(:doctor_shift, doctor_shift)
  end

  it "renders the edit doctor_shift form" do
    render
    expect(rendered).to render_template 'doctor_shifts/_form'
  end
end
