require 'rails_helper'

RSpec.describe "hospitals/index", type: :view do
  let!(:hospitals) { create_list :hospital, 3 }
  before(:each) do
    assign(:hospitals, hospitals)
  end

  it "renders a list of hospitals" do
    render
    hospitals.each do |ds|
      expect(rendered).to have_text(ds.name)
      expect(rendered).to have_text(ds.address)
      expect(rendered).to have_text(ds.phone)
    end
  end
end

