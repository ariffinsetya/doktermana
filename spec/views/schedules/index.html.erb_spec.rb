require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  let!(:schedules) { create_list :schedule, 3 }
  before(:each) do
    assign(:schedules, schedules)
  end

  it "renders a list of schedules" do
    render
    schedules.each do |ds|
      expect(rendered).to have_text ds.doctor.name
      expect(rendered).to have_text ds.start_time.strftime('%D %T')
      expect(rendered).to have_text ds.end_time.strftime('%D %T')
    end
  end
end
