require 'rails_helper'

RSpec.describe "doctor_shifts/new", type: :view do
  let!(:doctor_shift) { build :doctor_shift }
  before(:each) do
    assign(:doctor_shift, doctor_shift)
  end

  it "renders new doctor_shift form" do
    render
    expect(rendered).to render_template 'doctor_shifts/_form'
  end
end
