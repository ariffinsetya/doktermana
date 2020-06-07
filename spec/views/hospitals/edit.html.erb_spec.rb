require 'rails_helper'

RSpec.describe "hospitals/edit", type: :view do
  let!(:hospital) { create :hospital }
  before(:each) do
    assign(:hospital, hospital)
    end

  it "renders edit hospital form" do
    render
    expect(rendered).to render_template 'hospitals/_form'
  end
end

