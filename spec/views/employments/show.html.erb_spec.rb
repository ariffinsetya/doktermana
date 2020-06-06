require 'rails_helper'

RSpec.describe "employments/show", type: :view do
  before(:each) do
    @employment = assign(:employment, Employment.create!(
      doctor_id: 2,
      hospital_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
