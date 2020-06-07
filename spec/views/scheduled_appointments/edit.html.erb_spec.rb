require 'rails_helper'

RSpec.describe "scheduled_appointments/edit", type: :view do
  let!(:scheduled_appointment) { create :scheduled_appointment }
  before(:each) do
    assign(:scheduled_appointment, scheduled_appointment)
  end

  it "renders edit scheduled_appointment form" do
    render
    expect(rendered).to render_template 'scheduled_appointments/_form'
  end
end
