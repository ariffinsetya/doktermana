require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do
  let!(:schedule) { create :schedule }
  before(:each) do
    assign(:schedule, schedule)
  end

  it "renders edit schedule form" do
    render
    expect(rendered).to render_template 'schedules/_form'
  end
end
