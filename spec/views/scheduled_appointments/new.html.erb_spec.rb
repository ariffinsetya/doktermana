require 'rails_helper'

RSpec.describe "scheduled_appointments/new", type: :view do
  let!(:scheduled_appointment) { build :scheduled_appointment }
  before(:each) do
    assign(:scheduled_appointment, scheduled_appointment)
  end

  it "renders new scheduled_appointment form" do
    render
    expect(rendered).to render_template 'scheduled_appointments/_form'
  end
end
