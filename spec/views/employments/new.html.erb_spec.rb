require 'rails_helper'

RSpec.describe "employments/new", type: :view do
  let!(:employment) { build :employment }
  before(:each) do
    assign(:employment, employment)
  end

  it "renders new employment form" do
    render
    expect(rendered).to render_template 'employments/_form'
  end
end
