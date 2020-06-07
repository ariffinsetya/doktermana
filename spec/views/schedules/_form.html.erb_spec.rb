require 'rails_helper'

RSpec.describe "schedules/_form", type: :view do
  let!(:schedule) { Schedule.new }

  it "renders the edit schedule form" do
    render 'schedules/form', schedule: schedule
    expect(rendered).to have_selector('select[name=\"schedule\[doctor_id\]\"]')
  end
end
