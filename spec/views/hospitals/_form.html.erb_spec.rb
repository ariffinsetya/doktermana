require 'rails_helper'

RSpec.describe "hospitals/_form", type: :view do
  let!(:hospital) { Hospital.new }

  it "renders the edit hospital form" do
    render 'hospitals/form', hospital: hospital
    expect(rendered).to have_selector('input[name=\"hospital\[name\]\"]')
    expect(rendered).to have_selector('textarea[name=\"hospital\[address\]\"]')
    expect(rendered).to have_selector('input[name=\"hospital\[phone\]\"]')
  end
end
