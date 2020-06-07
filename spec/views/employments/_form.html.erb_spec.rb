require 'rails_helper'

RSpec.describe "employments/_form", type: :view do
  let!(:employment) { Employment.new }

  it "renders the edit employment form" do
    render 'employments/form', employment: employment
    expect(rendered).to have_selector('select[name=\"employment\[doctor_id\]\"]')
    expect(rendered).to have_selector('select[name=\"employment\[hospital_id\]\"]')
  end
end
