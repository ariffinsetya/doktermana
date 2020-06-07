require 'rails_helper'

RSpec.describe "employments/edit", type: :view do
  let!(:employment) { create :employment }
  before(:each) do
    @employment = assign(:employment, employment)  end

  it "renders the edit employment form" do
    render
    expect(rendered).to render_template 'employments/_form'
  end
end
