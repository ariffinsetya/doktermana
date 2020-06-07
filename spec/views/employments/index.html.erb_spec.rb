require 'rails_helper'

RSpec.describe "employments/index", type: :view do
  let!(:employments) { create_list :employment, 2 }
  before(:each) do
    assign(:employments, employments)
  end

  it "renders a list of employments" do
    render
    employments.each do |ds|
      expect(rendered).to have_text(ds.doctor.name)
      expect(rendered).to have_text(ds.hospital.name)
    end
  end
end
