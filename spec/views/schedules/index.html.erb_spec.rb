require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        doctor_id: 2
      ),
      Schedule.create!(
        doctor_id: 2
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
