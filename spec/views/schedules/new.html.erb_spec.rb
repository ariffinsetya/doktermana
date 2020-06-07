require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  let!(:schedule) { build :schedule }
  before(:each) do
    assign(:schedule, schedule)
    end

  it "renders new schedule form" do
    render
    expect(rendered).to render_template 'schedules/_form'
  end
end