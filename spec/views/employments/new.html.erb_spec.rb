require 'rails_helper'

RSpec.describe "employments/new", type: :view do
  before(:each) do
    assign(:employment, Employment.new(
      doctor_id: 1,
      hospital_id: 1
    ))
  end

  it "renders new employment form" do
    render

    assert_select "form[action=?][method=?]", employments_path, "post" do

      assert_select "input[name=?]", "employment[doctor_id]"

      assert_select "input[name=?]", "employment[hospital_id]"
    end
  end
end
