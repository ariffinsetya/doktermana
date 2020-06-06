require 'rails_helper'

RSpec.describe "employments/index", type: :view do
  before(:each) do
    assign(:employments, [
      Employment.create!(
        doctor_id: 2,
        hospital_id: 3
      ),
      Employment.create!(
        doctor_id: 2,
        hospital_id: 3
      )
    ])
  end

  it "renders a list of employments" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
