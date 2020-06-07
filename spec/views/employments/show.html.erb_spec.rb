require 'rails_helper'

RSpec.describe "employments/show", type: :view do
  let!(:employment) { create :employment }
  before(:each) do
    @employment = assign(:employment, employment)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to have_text(employment.doctor.name)
    expect(rendered).to have_text(employment.hospital.name)
  end
end